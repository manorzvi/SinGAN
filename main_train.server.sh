#!/bin/bash

# Setup env
source $HOME/anaconda3/etc/profile.d/conda.sh
conda activate cs236781-hw
echo "hello from $(python --version) in $(which python)"

python -c 'import torch; print(f"Am I playing on the Cuda? {torch.cuda.is_available()}")'
python -c 'print("This is the real Shit!")'
python -c 'print("We are harvesting the power of CS faculty for our needs! ya we are hackers!")'


python main_train.py --input_name nature5.jpg --input_dir Input/Images --mask_coords "(1245,1875),(1495,2080)" --norm 0
python main_train.py --input_name nature6.jpg --input_dir Input/Images --mask_coords "(1150,2700),(2450,3050)" --norm 0
