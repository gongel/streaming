export PYTHONPATH=../:$PYTHONPATH
python write.py


export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
rm -rf log
python -m paddle.distributed.launch --gpus 0,1,2,3 local_read.py