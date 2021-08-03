export CUDA_VISIBLE_DEVICES='0'

PRETRAIN_MODEL='/media/Rozhok/BiDet/ssd/pretrain/vgg16.pth'
DATASET_PATH='/home/biometrics/data/coco'
#DATASET_PATH='/home/biometrics/data/VOCdevkit'

python ssd/train_bidet_ssd.py --dataset='COCO' --data_root=$DATASET_PATH --basenet=$PRETRAIN_MODEL
