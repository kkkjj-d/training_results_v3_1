python /home/yanxindong/training_results_v3_1/NVIDIA/benchmarks/bert/implementations/pytorch/run_pretraining_only_eval.py  \
 --eval_dir /home/yanxindong/training_results_v3_1/NVIDIA/benchmarks/bert/implementations/pytorch/bert_data/hdf5/eval_varlength/ \
 --init_checkpoint /home/yanxindong/mkor/bert/results/eva/pretrain_ckpts/ckpt_30401.pt \
 --max_seq_length 512 \
 --do_train \
 --bert_config_path /home/yanxindong/training_results_v3_1/NVIDIA/benchmarks/bert/implementations/pytorch/config/bert_config.json