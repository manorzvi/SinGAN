#!/bin/bash

echo "hello from $(python --version) in $(which python)"
python -c 'import torch; print(f"Am I playing on the Cuda? {torch.cuda.is_available()}")'

python main_train.py --input_name western_wall.jpg    						--input_dir Input/Images --mask_coords "(370,630),(480,600)"     		--norm 1
python random_samples.py --input_name western_wall.jpg    			--model_dir TrainedModels/western_wall/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/    			--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250
python random_samples.py --input_name western_wall.jpg    			--model_dir TrainedModels/western_wall/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250
#python random_samples.py --input_name western_wall.jpg    			--model_dir TrainedModels/western_wall/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(370,630),(480,600)"

python main_train.py --input_name windows.jpg         						--input_dir Input/Images --mask_coords "(200,280),(700,760)"     		--norm 1
python random_samples.py --input_name windows.jpg    					--model_dir TrainedModels/windows/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/    					--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250
python random_samples.py --input_name windows.jpg   	 				--model_dir TrainedModels/windows/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/    					--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250
#python random_samples.py --input_name windows.jpg   	 				--model_dir TrainedModels/windows/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/    					--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(200,280),(700,760)"

python main_train.py --input_name woman_bricks.jpg   				 	--input_dir Input/Images --mask_coords "(1050,3200),(2600,3500)" 	--norm 1
python random_samples.py --input_name woman_bricks.jpg    		--model_dir TrainedModels/woman_bricks/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/  			--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250
python random_samples.py --input_name woman_bricks.jpg   			--model_dir TrainedModels/woman_bricks/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/  			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250
#python random_samples.py --input_name woman_bricks.jpg   			--model_dir TrainedModels/woman_bricks/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/  			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(1050,3200),(2600,3500)"

python main_train.py --input_name climb1.jpg          							--input_dir Input/Images --mask_coords "(120,290),(800,870)"     		--norm 1
python random_samples.py --input_name climb1.jpg          				--model_dir TrainedModels/climb1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          					--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250
python random_samples.py --input_name climb1.jpg          				--model_dir TrainedModels/climb1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          					--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250
#python random_samples.py --input_name climb1.jpg          				--model_dir TrainedModels/climb1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          					--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(120,290),(800,870)"

python main_train.py --input_name nature5.jpg         							--input_dir Input/Images --mask_coords "(1245,1875),(1495,2080)" 	--norm 1
python random_samples.py --input_name nature5.jpg          				--model_dir TrainedModels/nature5/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          				--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250
python random_samples.py --input_name nature5.jpg          				--model_dir TrainedModels/nature5/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          				--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250
#python random_samples.py --input_name nature5.jpg          				--model_dir TrainedModels/nature5/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/         			 	--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(1245,1875),(1495,2080)"

python main_train.py --input_name balloons_yellow.png         			--input_dir Input/Images --mask_coords "(100,125),(100,125)" 			--norm 1
python random_samples.py --input_name balloons_yellow.png			--model_dir TrainedModels/balloons_yellow/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          	--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250
python random_samples.py --input_name balloons_yellow.png         --model_dir TrainedModels/balloons_yellow/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          	--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250
#python random_samples.py --input_name balloons_yellow.png         --model_dir TrainedModels/balloons_yellow/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          	--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(100,125),(100,125)"

python main_train.py --input_name balloons_color.png         				--input_dir Input/Images --mask_coords "(0,70),(130,180)" 					--norm 1
python random_samples.py --input_name balloons_color.png          	--model_dir TrainedModels/balloons_color/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          	--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250
python random_samples.py --input_name balloons_color.png          	--model_dir TrainedModels/balloons_color/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          	--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250
#python random_samples.py --input_name balloons_color.png          	--model_dir TrainedModels/balloons_color/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          	--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(0,70),(130,180)"

python main_train.py --input_name chinese1.jpg        							--input_dir Input/Images --mask_coords "(90,380),(120,350)" 				--norm 1
python random_samples.py --input_name chinese1.png					--model_dir TrainedModels/chinese1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          				--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250
python random_samples.py --input_name chinese1.png					--model_dir TrainedModels/chinese1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          				--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250
#python random_samples.py --input_name chinese1.png					--model_dir TrainedModels/chinese1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          				--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(90,380),(120,350)"

python main_train.py --input_name chinese_woman.jpg        				--input_dir Input/Images --mask_coords "(340,1580),(550,980)" 			--norm 1
python random_samples.py --input_name chinese_woman.png		--model_dir TrainedModels/chinese_woman/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          	--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250
python random_samples.py --input_name chinese_woman.png		--model_dir TrainedModels/chinese_woman/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          	--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250
#python random_samples.py --input_name chinese_woman.png		--model_dir TrainedModels/chinese_woman/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          	--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(340,1580),(550,980)"

python main_train.py --input_name field_hockey1.jpg        					--input_dir Input/Images --mask_coords "(170,660),(750,940)" 			--norm 1
python random_samples.py --input_name field_hockey1.png			--model_dir TrainedModels/field_hockey1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          		--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250
python random_samples.py --input_name field_hockey1.png			--model_dir TrainedModels/field_hockey1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          		--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250
#python random_samples.py --input_name field_hockey1.png			--model_dir TrainedModels/field_hockey1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          		--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(170,660),(750,940)"

python main_train.py --input_name indoor3.jpg			        				--input_dir Input/Images --mask_coords "(1460,3220),(1170,1700)" 	--norm 1
python random_samples.py --input_name indoor3.png						--model_dir TrainedModels/indoor3/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          				--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250
python random_samples.py --input_name indoor3.png						--model_dir TrainedModels/indoor3/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          				--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250
#python random_samples.py --input_name indoor3.png						--model_dir TrainedModels/indoor3/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          				--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(1460,3220),(1170,1700)"

python main_train.py --input_name nature3.jpg      				  				--input_dir Input/Images --mask_coords "(1350,2410),(1600,2010)" 	--norm 1
python random_samples.py --input_name nature3.png						--model_dir TrainedModels/nature3/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          				--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250
python random_samples.py --input_name nature3.png						--model_dir TrainedModels/nature3/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          				--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250
#python random_samples.py --input_name nature3.png						--model_dir TrainedModels/nature3/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          				--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(1350,2410),(1600,2010)"

python main_train.py --input_name nature7.jpg        							--input_dir Input/Images --mask_coords "(2500,3480),(1980,2340)" 	--norm 1
python random_samples.py --input_name nature7.png						--model_dir TrainedModels/nature7/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          				--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 250
python random_samples.py --input_name nature7.png						--model_dir TrainedModels/nature7/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          				--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250
#python random_samples.py --input_name nature7.png						--model_dir TrainedModels/nature7/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=250/          				--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 250 --mask_coords "(2500,3480),(1980,2340)"
