from config import get_arguments
from SinGAN.manipulate import *
from SinGAN.training import *
import SinGAN.functions as functions
import shutil
import matplotlib.pyplot as plt

def create_dir2save(opt):
    return('TrainedModels/{}/scale_factor={:.2f},alpha={},niter={},min_size={},max_size={},train_mode={}'.format(
        opt.input_name[:-4], opt.scale_factor_init, opt.alpha, opt.niter, opt.min_size, opt.max_size,
        ','.join([tm for tm in opt.train_mode])))


def create_model_dir(opt):
    dir2save = create_dir2save(opt)
    opt.out_ = dir2save

    if os.path.exists(dir2save) and not opt.delete_previous:
        print('%s already exist.' % (dir2save))
        exit(6)
    elif os.path.exists(dir2save):
        print('%s exists but will be removed and re-created.' % (dir2save))
        shutil.rmtree(dir2save)
        os.makedirs(dir2save)
    else:
        print('%s is not exists, will be created.' % dir2save)
        os.makedirs(dir2save)


def create_first_mask(im,opt):
    mask = torch.ones_like(im)
    scale = opt.scale1
    opt.bbox = [int(np.ceil(bb*scale)) for bb in opt.bbox]
    mask[:, :, opt.bbox[1]:opt.bbox[3],opt.bbox[0]:opt.bbox[2]] = 0
    return mask

def bboxes(s):
    bbox = s.replace('(', '').replace(')', '').split(',')
    bbox = [int(coord) for coord in bbox]
    if (len(bbox) != 4):
        raise argparse.ArgumentTypeError('Bounding Box most be:\n'
                                         '(<origin x upper left>,<origin y upper left>),'
                                         '(<origin x bottom right>,<origin y bottom right>)')
    def bbox_size(bbox):
        return (bbox[1][0] - bbox[0][0]) * (bbox[1][1] - bbox[0][1])

    return bbox


def main_train(opt):

    Gs       = []
    Zs       = []
    reals    = []
    masks    = []
    NoiseAmp = []

    real_ = functions.read_image(opt)
    real  = functions.adjust_scales2image(real_, opt)
    plt.imsave('%s/%s.%s.png' % (opt.out_, opt.input_name[:-4], ''.join(['{}x'.format(s) for s in real.shape])[:-1]),
               functions.convert_image_np(real.detach()), vmin=0, vmax=1)
    mask = None
    if opt.need_mask:
        mask  = create_first_mask(real,opt)
        if opt.plotting:
            functions.plot_minibatch(
                torch.cat((real,mask, real*mask), dim=0),
                f'{opt.input_name[:-4]} | mask | {opt.input_name[:-4]}*mask | shape={real.shape}', opt
            )
        plt.imsave('%s/mask.%s.png' % (opt.out_, ''.join(['{}x'.format(s) for s in mask.shape])[:-1]),
               functions.convert_image_np(mask.detach()), vmin=0, vmax=1)

    train(opt, Gs, Zs, reals, masks, NoiseAmp, real=real, mask=mask)


if __name__ == '__main__':
    parser = get_arguments()
    parser.add_argument('--input_dir', help='input image dir', default='Input/Images')
    parser.add_argument('--input_name', help='input image name', required=True)
    parser.add_argument('--mode', help='task to be done', default='train')
    parser.add_argument('--train_mode', '-t_m', nargs='+', default=['regular'],
                        choices=['regular', 'gradient_mask', 'disc_map_mask', 'z_rec_mask'],
                        help="training features:\n"
                             "------------------\n"
                             "1) Regular\n"
                             "2) Gradient masking\n"
                             "3) Disc. map masking\n"
                             "4) Z reconstruction masking\n"
                             "5) Any combination of 2&4 or 3&4\n")
    parser.add_argument('--delete_previous', '-d_p', action='store_true', default=False,
                        help='delete previous TrainedModel directory, if exist')
    parser.add_argument('--bbox', '-bb', type=bboxes,
                        help="Object's bounding box in format of:\n"
                             "(upper left x0,upper left y0),(bottom right x0,bottom right y0)")
    parser.add_argument('--debug', action='store_true', default=False)
    parser.add_argument('--plotting', action='store_true', default=False)

    opt = parser.parse_args()
    opt = functions.post_config(opt)

    if opt.debug:
        print(f'-----------\n'
              f'| [debug] |\n'
              f'-----------\n'
              f'{opt}')

    if opt.mode != 'train':
        print("This script (main_train.py) most run with argument mode='train'.")
        exit(1)

    if 'gradient_mask'   in opt.train_mode and not opt.bbox:
        print("On 'gradient_mask' sub-mode, you must provide bounding box of an object.")
        exit(2)
    elif 'disc_map_mask' in opt.train_mode and not opt.bbox:
        print("On 'disc_map_mask' sub-mode, you must provide bounding box of an object.")
        exit(3)
    elif 'z_rec_mask'    in opt.train_mode and not opt.bbox:
        print("On 'z_rec_mask' sub-mode, you must provide bounding box of an object.")
        exit(4)
    elif 'regular'       in opt.train_mode and opt.bbox:
        print("On 'regular' sub-mode, a bounding box of an object is not necessary.")
        exit(5)

    if 'regular' in opt.train_mode and len(opt.train_mode) > 1:
        print("Can't be 'regular' in addition to another mode.")
        exit(6)

    assert not ('gradient_mask' in opt.train_mode and 'disc_map_mask' in opt.train_mode),\
        "Can't be both 'gradient_mask' and 'disc_map_mask'."

    if 'gradient_mask' in opt.train_mode or \
       'disc_map_mask' in opt.train_mode or \
       'z_rec_mask'    in opt.train_mode:
        opt.need_mask = True
    else:
        opt.need_mask = False

    create_model_dir(opt)
    main_train(opt)

