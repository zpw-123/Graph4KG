DATA_PATH=./data

## Single GPU

# TransE
python -u train.py --model_name TransE --data_name FB15k --data_path $DATA_PATH --save_path output/transe_fb_sgpu \
--batch_size 1000 --test_batch_size 16 --log_interval 1000 --eval_interval 24000 --reg_coef 1e-9 --reg_norm 3 \
--neg_sample_size 200 --neg_sample_type 'chunk' --embed_dim 400 --gamma 19.9 -adv \
--num_workers 8 --num_epoch 50 --print_on_screen --filter_eval --lr 0.25 --optimizer adagrad --test