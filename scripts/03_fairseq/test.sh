python ./fairseq/fairseq_cli/generate.py output/data-bin \
    --remove-bpe --path output/checkpoints/checkpoint_best.pt --beam 8  --task translation --max-tokens 4096 \
    --log-format none --gen-subset test --nbest 1 --source-lang zh --target-lang th  | tee output.zh-th.out

grep ^H output.zh-th.out | cut -f1,3- | cut -c3- | sort -k1n | cut -f2- > output.zh-th.final
