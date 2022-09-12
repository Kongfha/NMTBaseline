python ./fairseq/train.py output/data-bin --task translation \
        --max-tokens 4000 --source-lang th --target-lang zh --update-freq 4 --ddp-backend=no_c10d \
        --arch transformer  --label-smoothing 0.1 --fp16 \
        --optimizer adam --adam-betas '(0.9, 0.98)' \
        --lr-scheduler inverse_sqrt --warmup-init-lr 1e-07 --warmup-updates 4000  \
        --lr 0.0005 --save-interval-updates 500  --keep-interval-updates 5 --keep-last-epochs 5 --max-update 100000 \
        --dropout 0.1 --max-epoch 60 --criterion label_smoothed_cross_entropy --save-dir output/checkpoints
