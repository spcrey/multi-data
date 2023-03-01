#!/bin/bash  

python train.py\
 --epochs=108 --data_folder=data --log_dir=./log/exp13-right-ditance\
 --alpha_pde=0.0125 --train_data=yuan_suitable_data.npz --eval_data=yuan_suitable_data_eval.npz\
 --rayleigh=1000000 --prandtl=1 --nonlin=softplus --batch_size_per_gpu=8\
 --n_samp_pts_per_crop=512 --use_continuity=true --pseudo_epoch_size=6000\
 --channels="rho, u, w, b, s"\
 --equation_dir=./data/equations_yuan_pde_02.json
