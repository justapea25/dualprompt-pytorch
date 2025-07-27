python main.py \
    deepfake_dualprompt \
    --model vit_base_patch16_224 \
    --batch-size 128 \
    --data-path /home/hoangminhdau/work/Working/DynaCon/data/processed/CDDB \
    --output_dir ./output \
    --epochs 2 \
    --num_tasks 12