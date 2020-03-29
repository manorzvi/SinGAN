#!/bin/bash

# Setup env
source $HOME/anaconda3/etc/profile.d/conda.sh
conda activate cs236781-hw
echo "hello from $(python --version) in $(which python)"

python -c 'import torch; print(f"Am I playing on the Cuda? {torch.cuda.is_available()}")'
python -c 'print("This is the real Shit!")'
python -c 'print("We are harvesting the power of CS faculty for our needs! ya we are hackers!")'


#python main_train.py --input_name nature5.jpg --input_dir Input/Images --mask_coords "(1245,1875),(1495,2080)" --norm 0
#python main_train.py --input_name nature6.jpg --input_dir Input/Images --mask_coords "(1150,2700),(2450,3050)" --norm 0

#python main_train.py --input_name nature5.jpg --input_dir Input/Images --mask_coords "(1245,1875),(1495,2080)" --norm 0 --min_size 50
#python main_train.py --input_name nature6.jpg --input_dir Input/Images --mask_coords "(1150,2700),(2450,3050)" --norm 0 --min_size 50

#python main_train.py --input_name nature5.jpg --input_dir Input/Images --mask_coords "(1245,1875),(1495,2080)" --norm 0 --min_size 50 --max_size 500
#python main_train.py --input_name nature6.jpg --input_dir Input/Images --mask_coords "(1150,2700),(2450,3050)" --norm 0 --min_size 50 --max_size 500

# New images with repetitve patterns
python main_train.py --input_name western_wall.jpg    --input_dir Input/Images --mask_coords "(370,630),(480,600)"     --norm 0
python main_train.py --input_name windows.jpg         --input_dir Input/Images --mask_coords "(200,280),(700,760)"     --norm 0
python main_train.py --input_name woman_bricks.jpg    --input_dir Input/Images --mask_coords "(1050,3200),(2600,3500)" --norm 0
python main_train.py --input_name climb1.jpg          --input_dir Input/Images --mask_coords "(120,290),(800,870)"     --norm 0

python main_train.py --input_name western_wall.jpg    --input_dir Input/Images --mask_coords "(370,630),(480,600)"     --norm 0 --min_size 50  --max_size 500
python main_train.py --input_name windows.jpg         --input_dir Input/Images --mask_coords "(200,280),(700,760)"     --norm 0 --min_size 50  --max_size 500
python main_train.py --input_name balloons_large.jpeg --input_dir Input/Images --mask_coords "(330,410),(330,390)"     --norm 0 --min_size 50  --max_size 500

python main_train.py --input_name woman_bricks.jpg    --input_dir Input/Images --mask_coords "(1050,3200),(2600,3500)" --norm 0 --min_size 50 --max_size 500
python main_train.py --input_name climb1.jpg          --input_dir Input/Images --mask_coords "(120,290),(800,870)"     --norm 0 --min_size 50 --max_size 500
python main_train.py --input_name nature5.jpg         --input_dir Input/Images --mask_coords "(1245,1875),(1495,2080)" --norm 0 --min_size 50 --max_size 500

python main_train.py --input_name balloons.png        --input_dir Input/Images --mask_coords "(100,130),(100,120)"     --norm 0 --min_size 20
python main_train.py --input_name balloons.png        --input_dir Input/Images --mask_coords "(100,130),(100,120)"     --norm 0 --min_size 15

python random_samples.py --input_name woman_bricks.jpg    --model_dir TrainedModels/woman_bricks/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/    --mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250 &
python random_samples.py --input_name woman_bricks.jpg    --model_dir TrainedModels/woman_bricks/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/    --mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 &
python random_samples.py --input_name balloons_large.jpeg --model_dir TrainedModels/balloons_large./scale_factor\=0.750000\,alpha\=10\,min_size\=50\,max_size\=500/ --mode random_samples --gen_start_scale 0 --min_size 50 --max_size 500 &
python random_samples.py --input_name balloons_large.jpeg --model_dir TrainedModels/balloons_large./scale_factor\=0.750000\,alpha\=10\,min_size\=50\,max_size\=500/ --mode random_samples --gen_start_scale 1 --min_size 50 --max_size 500 &
python random_samples.py --input_name western_wall.jpg    --model_dir TrainedModels/western_wall/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/    --mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250 &
python random_samples.py --input_name western_wall.jpg    --model_dir TrainedModels/western_wall/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/    --mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 &
python random_samples.py --input_name climb1.jpg          --model_dir TrainedModels/climb1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          --mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250 &
python random_samples.py --input_name climb1.jpg          --model_dir TrainedModels/climb1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          --mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 &



