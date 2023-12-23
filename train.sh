TRAIN_BATCH_SIZE=32 #192
NUM_WORKERS=16
# PRETRAIN_MODEL_NAME="lambdalabs/sd-image-variations-diffusers"
PRETRAIN_MODEL_NAME="CompVis/stable-diffusion-v1-4"
MAX_TRAIN_STEPS=200000
VALIDATION_STEPS=500

## OOM when VRAM is 24GB, even when batch size is 1
# accelerate launch train_zero1to3.py \
# --train_data_dir "objaverse-mix/000-000" \
# --pretrained_model_name_or_path lambdalabs/sd-image-variations-diffusers \
# --train_batch_size $TRAIN_BATCH_SIZE \
# --dataloader_num_workers $NUM_WORKERS \
# --output_dir logs \
# --use_ema \
# --gradient_checkpointing \
# --mixed_precision no


## OOM when VRAM is 24GB, even when batch size is 1, resolution is 16
accelerate launch train_zero1to3.py \
--train_data_dir "objaverse-mix/000-000" \
--pretrained_model_name_or_path $PRETRAIN_MODEL_NAME \
--train_batch_size $TRAIN_BATCH_SIZE \
--dataloader_num_workers $NUM_WORKERS \
--output_dir logs \
--use_ema \
--gradient_checkpointing \
--mixed_precision bf16 \
--gradient_accumulation_steps 2 \
--resolution 256 \
--max_train_steps 20000 \
--validation_steps $VALIDATION_STEPS

