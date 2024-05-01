#!/bin/bash
datasets=( filtered unfiltered )
word_embeds=( bert )
encoders=( transformer lstm gru none )
weight_class=( uniform balanced inverse )
losses=( logloss )
poolings=( cls max avg last )
bidirectionals=( true false )
n_layers=( 1 2 3 )
n_heads=( 4 6 8 )

for dataset in "${datasets[@]}"; do
    echo "dataset: "$dataset""
    for word_embed in "${word_embeds[@]}"; do
        for encoder in "${encoders[@]}"; do
            for weight in "${weight_class[@]}"; do
                for loss in "${losses[@]}"; do
                    if [ "$encoder" = "none" ]; then
                        for pooling in "${poolings[@]}"; do
                            python multitask.py --dataset "$dataset" --word_embed "$word_embed" --encoder "$encoder" --pooling "$pooling" --class_weight "$weight" --loss "$loss" --viz_projection
                        done
                    else
                        for n_layer in "${n_layers[@]}"; do
                            if [ "$encoder" = "transformer" ]; then
                                for n_head in "${n_heads[@]}"; do
                                    for pooling in "${poolings[@]}"; do
                                        python multitask.py --dataset "$dataset" --word_embed "$word_embed" --encoder "$encoder" --n_layers "$n_layer" --n_heads "$n_head" --pooling "$pooling" --class_weight "$weight" --loss "$loss" --viz_projection
                                    done
                                done
                            else
                                for bidirectional in "${bidirectionals[@]}"; do
                                    if [ "$bidirectional" = true ]; then
                                        python multitask.py --dataset "$dataset" --word_embed "$word_embed" --encoder "$encoder" --n_layers "$n_layer" --bidirectional --class_weight "$weight" --loss "$loss" --viz_projection
                                    else
                                        python multitask.py --dataset "$dataset" --word_embed "$word_embed" --encoder "$encoder" --n_layers "$n_layer" --class_weight "$weight" --loss "$loss" --viz_projection
                                    fi
                                done
                            fi
                        done
                    fi
                done
            done
        done
    done
done