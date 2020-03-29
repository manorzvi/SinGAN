#!/bin/bash

python random_samples.py --input_name woman_bricks.jpg --model_dir TrainedModels/woman_bricks/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/ --mode random_samples --gen_start_scale 0 --not_cuda --min_size 25 --max_size 250 &
python random_samples.py --input_name woman_bricks.jpg --model_dir TrainedModels/woman_bricks/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/ --mode random_samples --gen_start_scale 1 --not_cuda --min_size 25 --max_size 250 &

python random_samples.py --input_name balloons_large.jpeg --model_dir TrainedModels/balloons_large./scale_factor\=0.750000\,alpha\=10\,min_size\=50\,max_size\=500/ --mode random_samples --gen_start_scale 0 --not_cuda --min_size 50 --max_size 500 &
python random_samples.py --input_name balloons_large.jpeg --model_dir TrainedModels/balloons_large./scale_factor\=0.750000\,alpha\=10\,min_size\=50\,max_size\=500/ --mode random_samples --gen_start_scale 1 --not_cuda --min_size 50 --max_size 500 &

python random_samples.py --input_name western_wall.jpg --model_dir TrainedModels/western_wall/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/ --mode random_samples --gen_start_scale 0 --not_cuda --min_size 25 --max_size 250 &
python random_samples.py --input_name western_wall.jpg --model_dir TrainedModels/western_wall/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/ --mode random_samples --gen_start_scale 1 --not_cuda --min_size 25 --max_size 250 &

python random_samples.py --input_name climb1.jpg --model_dir TrainedModels/climb1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/ --mode random_samples --gen_start_scale 0 --not_cuda --min_size 25 --max_size 250 &
python random_samples.py --input_name climb1.jpg --model_dir TrainedModels/climb1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/ --mode random_samples --gen_start_scale 1 --not_cuda --min_size 25 --max_size 250 &
