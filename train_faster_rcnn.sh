export CUDA_VISIBLE_DEVICES='0,1,2,3'

PRETRAIN_MODEL='/media/Rozhok/BiDet/faster_rcnn/pretrain/resnet18.pth'
#DATASET_PATH='/home/biometrics/data/coco'
DATASET_PATH='/media/School/Datasets/coco'
#DATASET_PATH='/home/biometrics/data/VOCdevkit'
LR=0.001
python faster_rcnn/trainval_net.py  --lr $LR --dataset='coco' --epochs 50 --data_root=$DATASET_PATH --basenet=$PRETRAIN_MODEL --server 'ultron' --exp_name 'coco2017_bidet18_LR='${LR} --caption 'baseline_faster_rcnn' #--nw 1 --bs 1
#python faster_rcnn/trainval_net.py --dataset='coco' --data_root='/home/biometrics/data/coco' --basenet='/media/Rozhok/BiDet/faster_rcnn/pretrain/resnet18.pth'