#!/bin/bash

python multitask.py --dataset unfiltered --word_embed bert --encoder transformer --n_layers 1 --n_heads 6 --pooling avg --class_weight balanced --loss logloss --output_dir freeze_bert --freeze_embedding --viz_projection
python multitask.py --dataset filtered --word_embed bert --encoder transformer --n_layers 1 --n_heads 6 --pooling avg --class_weight balanced --loss logloss --output_dir freeze_bert --freeze_embedding --viz_projection

python multitask.py --dataset unfiltered --word_embed bert --encoder lstm --n_layers 2 --pooling last --class_weight inverse --loss logloss --output_dir freeze_bert --freeze_embedding --viz_projection
python multitask.py --dataset filtered --word_embed bert --encoder lstm --n_layers 2 --pooling last --class_weight inverse --loss logloss --output_dir freeze_bert --freeze_embedding --viz_projection