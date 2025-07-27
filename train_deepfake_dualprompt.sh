#!/bin/bash

# Example 1: Train on 2 specific tasks (biggan and gaugan)
python main.py \
    deepfake_dualprompt \
    --model vit_base_patch16_224 \
    --batch-size 24 \
    --data-path /home/hoangminhdau/work/Working/DynaCon/data/processed/CDDB \
    --output_dir ./output \
    --epochs 4 \
    --num_tasks 2 \
    --deepfake_tasks biggan gaugan \
    --binary_evaluation True \
    --class_num_binary 2 \
    --train_mask False  # <-- Disable class masking for binary classification

# Example 2: Train on 3 tasks (uncomment to use)
# python main.py \
#     deepfake_dualprompt \
#     --model vit_base_patch16_224 \
#     --batch-size 24 \
#     --data-path /home/hoangminhdau/work/Working/DynaCon/data/processed/CDDB \
#     --output_dir ./output \
#     --epochs 5 \
#     --num_tasks 3 \
#     --deepfake_tasks stylegan gaugan crn

# Example 3: Train on all available tasks (uncomment to use)
# python main.py \
#     deepfake_dualprompt \
#     --model vit_base_patch16_224 \
#     --batch-size 24 \
#     --data-path /home/hoangminhdau/work/Working/DynaCon/data/processed/CDDB \
#     --output_dir ./output \
#     --epochs 5 \
#     --num_tasks 12 