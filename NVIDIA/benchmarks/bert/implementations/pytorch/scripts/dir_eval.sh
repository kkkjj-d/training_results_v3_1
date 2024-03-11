ckpt_dir=/home/yanxindong/mkor/mkor_results/eva/pretrain_ckpts/
files=($(ls $ckpt_dir))

mkdir eval_log
log_file=eval_log/lamb.txt

for file in "${files[@]}";do
    eval_file=$ckpt_dir$file

    python /home/yanxindong/training_results_v3_1/NVIDIA/benchmarks/bert/implementations/pytorch/run_pretraining_only_eval.py  \
 --eval_dir /home/yanxindong/training_results_v3_1/NVIDIA/benchmarks/bert/implementations/pytorch/bert_data/hdf5/eval_varlength/ \
 --init_checkpoint $eval_file \
 --max_seq_length 512 \
 --do_train \
 --bert_config_path /home/yanxindong/training_results_v3_1/NVIDIA/benchmarks/bert/implementations/pytorch/config/bert_config.json >> $log_file

done
