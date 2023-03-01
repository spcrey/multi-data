#!/bin/bash  

python evaluation.py\
 --eval_xres=512 --eval_zres=256 --eval_tres=64\
 --eval_downsamp_t=4 --eval_downsamp_xz=8 --eval_pseudo_batch_size=1000\
 --ckpt=./log/exp12-suitable-data-edge-sampling/checkpoint_latest.pth.tar_pdenet_best.pth.tar\
 --eval_data=yuan_suitable_data_eval.npz --rayleigh=1000000 --prandtl=1\
 --keep_frames

