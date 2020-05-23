#!/bin/bash

echo "hello from $(python --version) in $(which python)"
python -c 'import torch; print(f"Am I playing on the Cuda? {torch.cuda.is_available()}")'

python random_samples.py --input_name western_wall.jpg    			--model_dir TrainedModels/western_wall/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/    		--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(370,630),(480,600)"

python random_samples.py --input_name windows.jpg   	 			--model_dir TrainedModels/windows/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/    		--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(200,280),(700,760)"

python random_samples.py --input_name woman_bricks.jpg   			--model_dir TrainedModels/woman_bricks/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/  		--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(1050,3200),(2600,3500)"

python random_samples.py --input_name climb1.jpg          			--model_dir TrainedModels/climb1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          	--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(120,290),(800,870)"

python random_samples.py --input_name nature5.jpg          			--model_dir TrainedModels/nature5/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/         	--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(1245,1875),(1495,2080)"

python random_samples.py --input_name balloons_yellow.png         		--model_dir TrainedModels/balloons_yellow/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          	--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(100,125),(100,125)"

python random_samples.py --input_name balloons_color.png          		--model_dir TrainedModels/balloons_color/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          	--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(0,70),(130,180)"

python random_samples.py --input_name chinese1.jpg				--model_dir TrainedModels/chinese1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          	--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(90,380),(120,350)"

python random_samples.py --input_name chinese_woman.jpg	 			--model_dir TrainedModels/chinese_woman/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          	--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(340,1580),(550,980)"

python random_samples.py --input_name field_hockey1.jpg				--model_dir TrainedModels/field_hockey1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          	--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(170,660),(750,940)"

python random_samples.py --input_name indoor3.jpg				--model_dir TrainedModels/indoor3/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          	--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(1460,3220),(1170,1700)"

python random_samples.py --input_name nature3.jpg				--model_dir TrainedModels/nature3/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          	--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(1350,2410),(1600,2010)"

python random_samples.py --input_name nature7.jpg				--model_dir TrainedModels/nature7/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          	--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(2500,3480),(1980,2340)"
