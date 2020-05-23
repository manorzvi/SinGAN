from config import get_arguments
from SinGAN.manipulate import *
from SinGAN.training import *
from SinGAN.imresize import imresize
import SinGAN.functions as functions

def ParseCoords(s):
    mask_coords = s.replace('(', '').replace(')', '').split(',')
    mask_coords = [int(coord) for coord in mask_coords]
    if (len(mask_coords) != 4):
        raise argparse.ArgumentTypeError("Coordinates must be in format of: (y0,y1),(x0,x1), \n"
                                         "where: y0, y1 are longitude coordinates \n"
                                         "       x1, y1 are latitude coordinates. ")
    return mask_coords

if __name__ == '__main__':
    parser = get_arguments()
    parser.add_argument('--input_dir', help='input image dir', default='Input/Images')
    parser.add_argument('--input_name', help='input image name', required=True)
    # parser.add_argument('--input_name', help='input image name')
    parser.add_argument('--mode', help='random_samples | random_samples_arbitrary_sizes', default='train', required=True)
    # for random_samples:
    parser.add_argument('--gen_start_scale', type=int, help='generation start scale', default=0)
    # for random_samples_arbitrary_sizes:
    parser.add_argument('--scale_h', type=float, help='horizontal resize factor for random samples', default=1.5)
    parser.add_argument('--scale_v', type=float, help='vertical resize factor for random samples', default=1)
    parser.add_argument('--model_dir', type=str, help='load model directory')
    parser.add_argument('--mask_coords', type=ParseCoords,
                        help="Mask's coordinates in format of: (y0,y1),(x0,x1), \n"
                             "where: y0, y1 are longitude coordinates \n"
                             "       x1, y1 are latitude coordinates. ", default=None)
    parser.add_argument('--plotting', action='store_true', default=False)

    opt = parser.parse_args()
    opt = functions.post_config(opt)

    Gs = []
    Zs = []
    reals = []
    NoiseAmp = []
    masks = None

    dir2save = functions.generate_dir2save(opt)
    if dir2save is None:
        print('task does not exist')
    elif (os.path.exists(dir2save)):
        if opt.mode == 'random_samples':
            print('random samples for image %s, start scale=%d, already exist' % (opt.input_name, opt.gen_start_scale))
        elif opt.mode == 'random_samples_arbitrary_sizes':
            print('random samples for image %s at size: scale_h=%f, scale_v=%f, already exist' % (opt.input_name, opt.scale_h, opt.scale_v))
    else:
        try:
            os.makedirs(dir2save)
        except OSError:
            pass
        if opt.mode == 'random_samples':
            real = functions.read_image(opt)
            functions.adjust_scales2image(real, opt)
            Gs, Zs, reals, NoiseAmp = functions.load_trained_pyramid(opt)

            if opt.mask_coords:
                masks = []
                masks = functions.create_masks_pyramid(reals[-1], masks, opt)
                if opt.plotting:
                    for i, (r, m) in enumerate(zip(reals, masks)):
                        functions.plot_minibatch(torch.cat((r, m, r * m), dim=0),
                                                 f'real | mask | real * mask | scale={i} | shape={r.shape}', opt)

            in_s = functions.generate_in2coarsest(reals,1,1,opt)
            SinGAN_generate(Gs, Zs, reals, NoiseAmp, opt,
                            gen_start_scale=opt.gen_start_scale, masks=masks)

        elif opt.mode == 'random_samples_arbitrary_sizes':
            real = functions.read_image(opt)
            functions.adjust_scales2image(real, opt)
            Gs, Zs, reals, NoiseAmp = functions.load_trained_pyramid(opt)
            in_s = functions.generate_in2coarsest(reals,opt.scale_v,opt.scale_h,opt)
            SinGAN_generate(Gs, Zs, reals, NoiseAmp, opt, in_s, scale_v=opt.scale_v, scale_h=opt.scale_h)





