#!/bin/bash

# Setup env
source $HOME/anaconda3/etc/profile.d/conda.sh
conda activate cs236781-hw
echo "hello from $(python --version) in $(which python)"

python -c 'import torch; print(f"Am I playing on the Cuda? {torch.cuda.is_available()}")'
python -c 'print("This is the real Shit!")'
python -c 'print("We are harvesting the power of CS faculty for our needs! ya we are hackers!")'

# regular SinGAN
python main_train.py --input_name nature5.jpg  --input_dir  Input/People
python main_train.py --input_name nature6.jpg  --input_dir  Input/People
python main_train.py --input_name nature7.jpg  --input_dir  Input/People
python main_train.py --input_name nature8.jpg  --input_dir  Input/People
python main_train.py --input_name balloons.png --input_dir  Input/Images

python main_train.py --input_name nature5.jpg  --input_dir  Input/People --mode receptive_field -bb "(1200,1000),(2200,1900)"
python main_train.py --input_name nature6.jpg  --input_dir  Input/People --mode receptive_field -bb "(2450,1150),(3050,2700)"
python main_train.py --input_name nature7.jpg  --input_dir  Input/People --mode receptive_field -bb "(1400,2450),(2400,3500)"
python main_train.py --input_name nature8.jpg  --input_dir  Input/People --mode receptive_field -bb "(1750,950),(2400,2400)"
python main_train.py --input_name balloons.png --input_dir  Input/Images --mode receptive_field -bb "(120,0),(190,70)"


