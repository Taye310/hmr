# TODO: Replace with where you downloaded your resnet_v2_50.
PRETRAINED=/home/zhangtianyi/ShareFolder/models/resnet_v2_50_2017_04_14/resnet_v2_50.ckpt
# TODO: Replace with where you generated tf_record!
DATA_DIR=/home/zhangtianyi/ShareFolder/data/hmr/tfrecord/

CMD="python -m src.main --d_lr 1e-4 --e_lr 1e-5 --log_img_step 1000 --pretrained_model_path=${PRETRAINED} --data_dir ${DATA_DIR} --e_loss_weight 60. --batch_size=64 --use_3d_label True --e_3d_weight 60. --datasets lsp,lsp_ext,mpii,coco,mpi_inf_3dhp --epoch 75 --log_dir logs"

# To pick up training/training from a previous model, set LP
# LP='logs/<WITH_YOUR_TRAINED_MODEL>'
# CMD="python -m src.main --d_lr 1e-4 --e_lr 1e-5 --log_img_step 1000 --load_path=${LP} --e_loss_weight 60. --batch_size=64 --use_3d_label True --e_3d_weight 60. --datasets lsp lsp_ext mpii h36m coco mpi_inf_3dhp --epoch 75"

echo $CMD
$CMD
