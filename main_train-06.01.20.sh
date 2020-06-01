#!/bin/bash

echo "hello from $(python --version) in $(which python)"
python -c 'import torch; print(f"Am I playing on the Cuda? {torch.cuda.is_available()}")'

python main_train.py 			--input_name boats1.jpg    			--input_dir Input/Images --mask_coords "(220,300),(190,255)"     																			--norm 1 --min_size 25 --max_size 500
python random_samples.py --input_name boats1.jpg    			--model_dir TrainedModels/boats1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 500
python random_samples.py --input_name boats1.jpg    			--model_dir TrainedModels/boats1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500
#python random_samples.py --input_name boats1.jpg    		--model_dir TrainedModels/boats1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500 --mask_coords "(220,300),(190,255)"

python main_train.py 			--input_name boats2.jpg    			--input_dir Input/Images --mask_coords "(500,700),(215,360)"     																			--norm 1 --min_size 25 --max_size 500
python random_samples.py --input_name boats2.jpg    			--model_dir TrainedModels/boats2/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 500
python random_samples.py --input_name boats2.jpg    			--model_dir TrainedModels/boats2/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500
#python random_samples.py --input_name boats2.jpg    		--model_dir TrainedModels/boats2/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500 --mask_coords "(500,700),(215,360)" 

python main_train.py 			--input_name boats3.jpg    			--input_dir Input/Images --mask_coords "(170,290),(590,900)"     																			--norm 1 --min_size 25 --max_size 500
python random_samples.py --input_name boats3.jpg    			--model_dir TrainedModels/boats3/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 500
python random_samples.py --input_name boats3.jpg    			--model_dir TrainedModels/boats3/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500
#python random_samples.py --input_name boats3.jpg    		--model_dir TrainedModels/boats3/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500 --mask_coords "(170,290),(590,900)"

python main_train.py 			--input_name cars1.jpg    			--input_dir Input/Images --mask_coords "(815,1040),(340,960)"     																			--norm 1 --min_size 25 --max_size 500
python random_samples.py --input_name cars1.jpg    			--model_dir TrainedModels/cars1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 500
python random_samples.py --input_name cars1.jpg    			--model_dir TrainedModels/cars1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500
#python random_samples.py --input_name cars1.jpg    			--model_dir TrainedModels/cars1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500 --mask_coords "(815,1040),(340,960)"

python main_train.py 			--input_name empire_state.jpg    			--input_dir Input/Images --mask_coords "(50,510),(565,650)"     																							--norm 1 --min_size 25 --max_size 500
python random_samples.py --input_name empire_state.jpg    			--model_dir TrainedModels/empire_state/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 500
python random_samples.py --input_name empire_state.jpg    			--model_dir TrainedModels/empire_state/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500
#python random_samples.py --input_name empire_state.jpg    			--model_dir TrainedModels/empire_state/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500 --mask_coords "(50,510),(565,650)"

python main_train.py 			--input_name empire_state2.jpg    		--input_dir Input/Images --mask_coords "(480,590),(320,490)"     																						--norm 1 --min_size 25 --max_size 500
python random_samples.py --input_name empire_state2.jpg    			--model_dir TrainedModels/empire_state2/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 500
python random_samples.py --input_name empire_state2.jpg    			--model_dir TrainedModels/empire_state2/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500
#python random_samples.py --input_name empire_state2.jpg    		--model_dir TrainedModels/empire_state2/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500 --mask_coords "(480,590),(320,490)"

python main_train.py 			--input_name fishes1.jpg    			--input_dir Input/Images --mask_coords "(1450,1800),(990,1660)"     																		--norm 1 --min_size 25 --max_size 500
python random_samples.py --input_name fishes1.jpg    			--model_dir TrainedModels/fishes1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 500
python random_samples.py --input_name fishes1.jpg    			--model_dir TrainedModels/fishes1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500
#python random_samples.py --input_name fishes1.jpg    			--model_dir TrainedModels/fishes1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500 --mask_coords "(1450,1800),(990,1660)"

python main_train.py 			--input_name fishes2.jpg    			--input_dir Input/Images --mask_coords "(210,500),(730,1020)"     																			--norm 1 --min_size 25 --max_size 500
python random_samples.py --input_name fishes2.jpg    			--model_dir TrainedModels/fishes2/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 500
python random_samples.py --input_name fishes2.jpg    			--model_dir TrainedModels/fishes2/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500
#python random_samples.py --input_name fishes2.jpg    			--model_dir TrainedModels/fishes2/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500 --mask_coords "(210,500),(730,1020)"

python main_train.py 			--input_name fishes3.jpg    			--input_dir Input/Images --mask_coords "(400,490),(400,560)"     																			--norm 1 --min_size 25 --max_size 500
python random_samples.py --input_name fishes3.jpg    			--model_dir TrainedModels/fishes3/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 500
python random_samples.py --input_name fishes3.jpg    			--model_dir TrainedModels/fishes3/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500
#python random_samples.py --input_name fishes3.jpg    			--model_dir TrainedModels/fishes3/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500 --mask_coords "(400,490),(400,560)"

python main_train.py 			--input_name fishes4.jpg    			--input_dir Input/Images --mask_coords "(470,670),(1300,1600)"     																		--norm 1 --min_size 25 --max_size 500
python random_samples.py --input_name fishes4.jpg    			--model_dir TrainedModels/fishes4/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 500
python random_samples.py --input_name fishes4.jpg    			--model_dir TrainedModels/fishes4/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500
#python random_samples.py --input_name fishes4.jpg    			--model_dir TrainedModels/fishes4/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500 --mask_coords "(470,670),(1300,1600)"

python main_train.py 			--input_name times_square2.jpg    			--input_dir Input/Images --mask_coords "(410,615),(290,460)"     																						--norm 1 --min_size 25 --max_size 500
python random_samples.py --input_name times_square2.jpg    			--model_dir TrainedModels/times_square2/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 500
python random_samples.py --input_name times_square2.jpg    			--model_dir TrainedModels/times_square2/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500
#python random_samples.py --input_name times_square2.jpg    			--model_dir TrainedModels/times_square2/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500 --mask_coords "(410,615),(290,460)"

python main_train.py 			--input_name wtc1.jpg    			--input_dir Input/Images --mask_coords "(20,210),(310,390)"     																			--norm 1 --min_size 25 --max_size 500
python random_samples.py --input_name wtc1.jpg    			--model_dir TrainedModels/wtc1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 500
python random_samples.py --input_name wtc1.jpg    			--model_dir TrainedModels/wtc1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500
#python random_samples.py --input_name wtc1.jpg    			--model_dir TrainedModels/wtc1/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500 --mask_coords "(20,210),(310,390)"

python main_train.py 			--input_name wtc2.jpg    			--input_dir Input/Images --mask_coords "(180,510),(500,660)"     																		--norm 1 --min_size 25 --max_size 500
python random_samples.py --input_name wtc2.jpg    			--model_dir TrainedModels/wtc2/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 500
python random_samples.py --input_name wtc2.jpg    			--model_dir TrainedModels/wtc2/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500
#python random_samples.py --input_name wtc2.jpg    			--model_dir TrainedModels/wtc2/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500 --mask_coords "(180,510),(500,660)"

python main_train.py 			--input_name wtc3.jpg    			--input_dir Input/Images --mask_coords "(1270,1520),(380,750)"     																	--norm 1 --min_size 25 --max_size 500
python random_samples.py --input_name wtc3.jpg    			--model_dir TrainedModels/wtc3/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 0 --min_size 25 --max_size 500
python random_samples.py --input_name wtc3.jpg    			--model_dir TrainedModels/wtc3/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500
#python random_samples.py --input_name wtc3.jpg    			--model_dir TrainedModels/wtc3/scale_factor\=0.750000\,alpha\=10\,min_size\=25\,max_size\=500/    			--mode random_samples --gen_start_scale 1 --min_size 25 --max_size 500 --mask_coords "(1270,1520),(380,750)"



















