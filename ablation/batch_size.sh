#!/bin/bash

python multitask.py --dataset filtered --word_embed bert --encoder lstm --n_layers 2 --pooling last --class_weight inverse --loss logloss --viz_projection --output_dir batch_size_4 --batch_size 4
python multitask.py --dataset filtered --word_embed bert --encoder lstm --n_layers 2 --pooling last --class_weight inverse --loss logloss --viz_projection --output_dir batch_size_8 --batch_size 8
python multitask.py --dataset filtered --word_embed bert --encoder lstm --n_layers 2 --pooling last --class_weight inverse --loss logloss --viz_projection --output_dir batch_size_16 --batch_size 16
python multitask.py --dataset filtered --word_embed bert --encoder lstm --n_layers 2 --pooling last --class_weight inverse --loss logloss --viz_projection --output_dir batch_size_32 --batch_size 32
python multitask.py --dataset filtered --word_embed bert --encoder lstm --n_layers 2 --pooling last --class_weight inverse --loss logloss --viz_projection --output_dir batch_size_64 --batch_size 64
python multitask.py --dataset filtered --word_embed bert --encoder lstm --n_layers 2 --pooling last --class_weight inverse --loss logloss --viz_projection --output_dir batch_size_128 --batch_size 128
python multitask.py --dataset unfiltered --word_embed bert --encoder lstm --n_layers 2 --pooling last --class_weight inverse --loss logloss --viz_projection --output_dir batch_size_4 --batch_size 4
python multitask.py --dataset unfiltered --word_embed bert --encoder lstm --n_layers 2 --pooling last --class_weight inverse --loss logloss --viz_projection --output_dir batch_size_8 --batch_size 8
python multitask.py --dataset unfiltered --word_embed bert --encoder lstm --n_layers 2 --pooling last --class_weight inverse --loss logloss --viz_projection --output_dir batch_size_16 --batch_size 16
python multitask.py --dataset unfiltered --word_embed bert --encoder lstm --n_layers 2 --pooling last --class_weight inverse --loss logloss --viz_projection --output_dir batch_size_32 --batch_size 32
python multitask.py --dataset unfiltered --word_embed bert --encoder lstm --n_layers 2 --pooling last --class_weight inverse --loss logloss --viz_projection --output_dir batch_size_64 --batch_size 64
python multitask.py --dataset unfiltered --word_embed bert --encoder lstm --n_layers 2 --pooling last --class_weight inverse --loss logloss --viz_projection --output_dir batch_size_128 --batch_size 128

python multitask.py --dataset filtered --word_embed bert --encoder transformer --n_layers 1 --n_heads 6 --pooling avg --class_weight balanced --loss logloss --viz_projection --output_dir batch_size_4 --batch_size 4
python multitask.py --dataset filtered --word_embed bert --encoder transformer --n_layers 1 --n_heads 6 --pooling avg --class_weight balanced --loss logloss --viz_projection --output_dir batch_size_8 --batch_size 8
python multitask.py --dataset filtered --word_embed bert --encoder transformer --n_layers 1 --n_heads 6 --pooling avg --class_weight balanced --loss logloss --viz_projection --output_dir batch_size_16 --batch_size 16
python multitask.py --dataset filtered --word_embed bert --encoder transformer --n_layers 1 --n_heads 6 --pooling avg --class_weight balanced --loss logloss --viz_projection --output_dir batch_size_32 --batch_size 32
python multitask.py --dataset filtered --word_embed bert --encoder transformer --n_layers 1 --n_heads 6 --pooling avg --class_weight balanced --loss logloss --viz_projection --output_dir batch_size_64 --batch_size 64
python multitask.py --dataset filtered --word_embed bert --encoder transformer --n_layers 1 --n_heads 6 --pooling avg --class_weight balanced --loss logloss --viz_projection --output_dir batch_size_128 --batch_size 128
python multitask.py --dataset unfiltered --word_embed bert --encoder transformer --n_layers 1 --n_heads 6 --pooling avg --class_weight balanced --loss logloss --viz_projection --output_dir batch_size_4 --batch_size 4
python multitask.py --dataset unfiltered --word_embed bert --encoder transformer --n_layers 1 --n_heads 6 --pooling avg --class_weight balanced --loss logloss --viz_projection --output_dir batch_size_8 --batch_size 8
python multitask.py --dataset unfiltered --word_embed bert --encoder transformer --n_layers 1 --n_heads 6 --pooling avg --class_weight balanced --loss logloss --viz_projection --output_dir batch_size_16 --batch_size 16
python multitask.py --dataset unfiltered --word_embed bert --encoder transformer --n_layers 1 --n_heads 6 --pooling avg --class_weight balanced --loss logloss --viz_projection --output_dir batch_size_32 --batch_size 32
python multitask.py --dataset unfiltered --word_embed bert --encoder transformer --n_layers 1 --n_heads 6 --pooling avg --class_weight balanced --loss logloss --viz_projection --output_dir batch_size_64 --batch_size 64
python multitask.py --dataset unfiltered --word_embed bert --encoder transformer --n_layers 1 --n_heads 6 --pooling avg --class_weight balanced --loss logloss --viz_projection --output_dir batch_size_128 --batch_size 128