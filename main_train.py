import shutil
from config import get_arguments
from SinGAN.manipulate import *
from SinGAN.training import *
import SinGAN.functions as functions

def scale_bbox(opt):
    scale = opt.scale1
    opt.bbox = [int(np.ceil(bb*scale)) for bb in opt.bbox] # support multiple bounding boxes on a single image

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

if __name__ == '__main__':
    parser = get_arguments()
    parser.add_argument('--input_dir',  help='input image dir', default='Input/Images')
    parser.add_argument('--input_name', help='input image name', required=True)
    parser.add_argument('--mode',       help='task to be done', default='train')
    parser.add_argument('--bbox', '-bb', type=bboxes,
                        help="Object's bounding box in format of:\n"
                             "(upper left x,upper left y),(bottom right x,bottom right y)")
    parser.add_argument('--plotting', '-plt', action='store_true', default=False)
    parser.add_argument('--delete_previous', '-dp', action='store_true', default=False,
                        help='delete previous results, if exist')
    opt = parser.parse_args()


    if opt.mode != 'receptive_field' and opt.bbox:
        parser.error('--bbox is not required when --mode is not receptive_field')
    if opt.mode == 'receptive_field' and not opt.bbox:
        parser.error('--bbox is required when --mode is receptive_field')

    opt = functions.post_config(opt)
    Gs          = []
    Zs          = []
    reals       = []
    NoiseAmp    = []
    dir2save    = functions.generate_dir2save(opt)

    if (os.path.exists(dir2save) and not opt.delete_previous):
        print('trained model already exist')
    elif os.path.exists(dir2save):
        shutil.rmtree(dir2save)
        os.makedirs(dir2save)
    else:
        os.makedirs(dir2save)

    real = functions.read_image(opt)
    functions.adjust_scales2image(real, opt)

    if opt.mode == 'receptive_field':
        scale_bbox(opt)

    train(opt, Gs, Zs, reals, NoiseAmp)
    SinGAN_generate(Gs,Zs,reals,NoiseAmp,opt)
