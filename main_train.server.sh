#!/bin/bash

# Setup env
source $HOME/anaconda3/etc/profile.d/conda.sh
conda activate cs236781-hw
echo "hello from $(python --version) in $(which python)"

python -c 'import torch; print(f"Am I playing on the Cuda? {torch.cuda.is_available()}")'
python -c 'print("This is the real Shit!")'
python -c 'print("We are harvesting the power of CS faculty for our needs! ya we are hackers!")'

python main_train.py --input_name western_wall.jpg    --input_dir Input/Images --mask_coords "(370,630),(480,600)"     --norm 0

echo "[I] - western_wall random sampling start scale 0"
echo "------------------------------------------------"
python random_samples.py --input_name western_wall.jpg    --model_dir TrainedModels/western_wall/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/    --mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250 &
echo "[I] - western_wall random sampling start scale 1"
echo "------------------------------------------------"
python random_samples.py --input_name western_wall.jpg    --model_dir TrainedModels/western_wall/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/    --mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 &

python main_train.py --input_name windows.jpg         --input_dir Input/Images --mask_coords "(200,280),(700,760)"     --norm 0

echo "[I] - windows random sampling start scale 0"
echo "-------------------------------------------"
python random_samples.py --input_name windows.jpg    --model_dir TrainedModels/windows/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/    --mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250 &
echo "[I] - windows random sampling start scale 1"
echo "-------------------------------------------"
python random_samples.py --input_name windows.jpg    --model_dir TrainedModels/windows/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/    --mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 &

python main_train.py --input_name woman_bricks.jpg    --input_dir Input/Images --mask_coords "(1050,3200),(2600,3500)" --norm 0

echo "[I] - woman bricks random sampling start scale 0"
echo "------------------------------------------------"
python random_samples.py --input_name woman_bricks.jpg    --model_dir TrainedModels/woman_bricks/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/    --mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250 &
echo "[I] - woman bricks random sampling start scale 1"
echo "------------------------------------------------"
python random_samples.py --input_name woman_bricks.jpg    --model_dir TrainedModels/woman_bricks/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/    --mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 &

python main_train.py --input_name climb1.jpg          --input_dir Input/Images --mask_coords "(120,290),(800,870)"     --norm 0

echo "[I] - climb1 random sampling start scale 0"
echo "------------------------------------------"
python random_samples.py --input_name climb1.jpg          --model_dir TrainedModels/climb1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          --mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250 &
echo "[I] - climb1 random sampling start scale 1"
echo "------------------------------------------"
python random_samples.py --input_name climb1.jpg          --model_dir TrainedModels/climb1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          --mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 &

python main_train.py --input_name nature5.jpg         --input_dir Input/Images --mask_coords "(1245,1875),(1495,2080)" --norm 0

echo "[I] - nature5 random sampling start scale 0"
echo "------------------------------------------"
python random_samples.py --input_name nature5.jpg          --model_dir TrainedModels/nature5/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          --mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250 &
echo "[I] - nature5 random sampling start scale 1"
echo "------------------------------------------"
python random_samples.py --input_name nature5.jpg          --model_dir TrainedModels/nature5/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          --mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 &

python main_train.py --input_name balloons_yellow.png         --input_dir Input/Images --mask_coords "(100,125),(100,125)" --norm 0

echo "[I] - balloons_yellow random sampling start scale 0"
echo "------------------------------------------"
python random_samples.py --input_name balloons_yellow.png          --model_dir TrainedModels/balloons_yellow/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          --mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250 &
echo "[I] - balloons_yellow random sampling start scale 1"
echo "------------------------------------------"
python random_samples.py --input_name balloons_yellow.png          --model_dir TrainedModels/balloons_yellow/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          --mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 &

python main_train.py --input_name balloons_color.png         --input_dir Input/Images --mask_coords "(0,70),(130,180)" --norm 0

echo "[I] - balloons_color random sampling start scale 0"
echo "------------------------------------------"
python random_samples.py --input_name balloons_color.png          --model_dir TrainedModels/balloons_color/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          --mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250 &
echo "[I] - balloons_color random sampling start scale 1"
echo "------------------------------------------"
python random_samples.py --input_name balloons_color.png          --model_dir TrainedModels/balloons_color/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          --mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 &

python main_train.py --input_name balloons_tent.png         --input_dir Input/Images --mask_coords "(0,70),(130,180)" --norm 0

echo "[I] - balloons_tent random sampling start scale 0"
echo "------------------------------------------"
python random_samples.py --input_name balloons_tent.png          --model_dir TrainedModels/balloons_tent/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          --mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250 &
echo "[I] - balloons_tent random sampling start scale 1"
echo "------------------------------------------"
python random_samples.py --input_name balloons_tent.png          --model_dir TrainedModels/balloons_tent/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          --mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 &

python main_train.py --input_name western_wall.jpg    --input_dir Input/Images --mask_coords "(370,630),(480,600)"     --norm 0 --min_size 50  --max_size 500

echo "[I] - western_wall random sampling start scale 0"
echo "------------------------------------------------"
python random_samples.py --input_name western_wall.jpg    --model_dir TrainedModels/western_wall/scale_factor\=0.750000\,alpha\=10\,min_size\=50\,max_size\=500/    --mode random_samples --gen_start_scale 0 --min_size 50 --max_size 500 &
echo "[I] - western_wall random sampling start scale 1"
echo "------------------------------------------------"
python random_samples.py --input_name western_wall.jpg    --model_dir TrainedModels/western_wall/scale_factor\=0.750000\,alpha\=10\,min_size\=50\,max_size\=500/    --mode random_samples --gen_start_scale 1 --min_size 50 --max_size 500 &

python main_train.py --input_name windows.jpg         --input_dir Input/Images --mask_coords "(200,280),(700,760)"     --norm 0 --min_size 50  --max_size 500

echo "[I] - windows random sampling start scale 0"
echo "-------------------------------------------"
python random_samples.py --input_name windows.jpg    --model_dir TrainedModels/windows/scale_factor\=0.750000\,alpha\=10\,min_size\=50\,max_size\=500/    --mode random_samples --gen_start_scale 0 --min_size 50 --max_size 500 &
echo "[I] - windows random sampling start scale 1"
echo "-------------------------------------------"
python random_samples.py --input_name windows.jpg    --model_dir TrainedModels/windows/scale_factor\=0.750000\,alpha\=10\,min_size\=50\,max_size\=500/    --mode random_samples --gen_start_scale 1 --min_size 50 --max_size 500 &

python main_train.py --input_name woman_bricks.jpg    --input_dir Input/Images --mask_coords "(1050,3200),(2600,3500)" --norm 0 --min_size 50 --max_size 500

echo "[I] - woman bricks random sampling start scale 0"
echo "------------------------------------------------"
python random_samples.py --input_name woman_bricks.jpg    --model_dir TrainedModels/woman_bricks/scale_factor\=0.750000\,alpha\=10\,min_size\=50\,max_size\=500/    --mode random_samples --gen_start_scale 0 --min_size 50 --max_size 500 &
echo "[I] - woman bricks random sampling start scale 1"
echo "------------------------------------------------"
python random_samples.py --input_name woman_bricks.jpg    --model_dir TrainedModels/woman_bricks/scale_factor\=0.750000\,alpha\=10\,min_size\=50\,max_size\=500/    --mode random_samples --gen_start_scale 1 --min_size 50 --max_size 500 &

python main_train.py --input_name climb1.jpg          --input_dir Input/Images --mask_coords "(120,290),(800,870)"     --norm 0 --min_size 50 --max_size 500

echo "[I] - climb1 random sampling start scale 0"
echo "------------------------------------------"
python random_samples.py --input_name climb1.jpg          --model_dir TrainedModels/climb1/scale_factor\=0.750000\,alpha\=10\,min_size\=50\,max_size\=500/          --mode random_samples --gen_start_scale 0 --min_size 50 --max_size 500 &
echo "[I] - climb1 random sampling start scale 1"
echo "------------------------------------------"
python random_samples.py --input_name climb1.jpg          --model_dir TrainedModels/climb1/scale_factor\=0.750000\,alpha\=10\,min_size\=50\,max_size\=500/          --mode random_samples --gen_start_scale 1 --min_size 50 --max_size 500 &

python main_train.py --input_name nature5.jpg         --input_dir Input/Images --mask_coords "(1245,1875),(1495,2080)" --norm 0 --min_size 50 --max_size 500

echo "[I] - nature5 random sampling start scale 0"
echo "------------------------------------------"
python random_samples.py --input_name nature5.jpg          --model_dir TrainedModels/nature5/scale_factor\=0.750000\,alpha\=10\,min_size\=50\,max_size\=500/          --mode random_samples --gen_start_scale 0 --min_size 50 --max_size 500 &
echo "[I] - nature5 random sampling start scale 1"
echo "------------------------------------------"
python random_samples.py --input_name nature5.jpg          --model_dir TrainedModels/nature5/scale_factor\=0.750000\,alpha\=10\,min_size\=50\,max_size\=500/          --mode random_samples --gen_start_scale 1 --min_size 50 --max_size 500 &
