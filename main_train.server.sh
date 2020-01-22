#!/bin/bash

# Setup env
source $HOME/anaconda3/etc/profile.d/conda.sh
conda activate cs236781-hw
echo "hello from $(python --version) in $(which python)"

python -c 'import torch; print(f"Am I playing on the Cuda? {torch.cuda.is_available()}")'
python -c 'print("This is the real Shit!")'
python -c 'print("We are harvesting the power of CS faculty for our needs! ya we are hackers!")'

# regular SinGAN
python main_train.py --input_name nature5.jpg --input_dir Input/People --delete_previous
# Masking Z reconstruction
python main_train.py --input_name nature5.jpg --input_dir Input/People --delete_previous -t_m               z_rec_mask -bb "(1400,1200),(2200,1900)"

# Masking disc. map gradients before backprop.
python main_train.py --input_name nature5.jpg --input_dir Input/People --delete_previous -t_m gradient_mask            -bb "(1400,1200),(2200,1900)"
# Masking disc. output gradients before backprop AND masking Z reconstruction
python main_train.py --input_name nature5.jpg --input_dir Input/People --delete_previous -t_m gradient_mask z_rec_mask -bb "(1400,1200),(2200,1900)"

# Masking disc. map itself before backprop
python main_train.py --input_name nature5.jpg --input_dir Input/People --delete_previous -t_m disc_map_mask            -bb "(1400,1200),(2200,1900)"
# Masking disc. map itself before backprop AND masking Z reconstruction
python main_train.py --input_name nature5.jpg --input_dir Input/People --delete_previous -t_m disc_map_mask z_rec_mask -bb "(1400,1200),(2200,1900)"
