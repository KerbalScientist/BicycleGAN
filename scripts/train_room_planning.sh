set -ex
MODEL='bicycle_gan'
# dataset details
CLASS='room_planning'
NZ=8
NO_FLIP=''
DIRECTION='BtoA'
LOAD_SIZE=256
CROP_SIZE=256
INPUT_NC=3
NITER=100
NITER_DECAY=100
SAVE_EPOCH=20

# training
GPU_ID=0
DISPLAY_ID=$((GPU_ID*10+1))
CHECKPOINTS_DIR=../checkpoints/${CLASS}/
NAME=${CLASS}_${MODEL}

# command
python ./train.py \
  --display_id ${DISPLAY_ID} \
  --dataroot ./datasets/${CLASS} \
  --name ${NAME} \
  --model ${MODEL} \
  --direction ${DIRECTION} \
  --checkpoints_dir ${CHECKPOINTS_DIR} \
  --load_size ${LOAD_SIZE} \
  --crop_size ${CROP_SIZE} \
  --nz ${NZ} \
  --input_nc ${INPUT_NC} \
  --niter ${NITER} \
  --niter_decay ${NITER_DECAY} \
  --save_epoch_freq ${SAVE_EPOCH} \
  --use_dropout
