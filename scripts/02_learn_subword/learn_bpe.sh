subword-nmt learn-bpe -s 32000 < dataset/train.seg.th > output/th.32000.bpe
subword-nmt learn-bpe -s 32000 < dataset/train.seg.zh > output/zh.32000.bpe

subword-nmt apply-bpe -c output/th.32000.bpe < dataset/train.seg.th > output/train.bpe.th
subword-nmt apply-bpe -c output/zh.32000.bpe < dataset/train.seg.zh > output/train.bpe.zh

subword-nmt apply-bpe -c output/th.32000.bpe < dataset/valid.seg.th > output/valid.bpe.th
subword-nmt apply-bpe -c output/zh.32000.bpe < dataset/valid.seg.zh > output/valid.bpe.zh

subword-nmt apply-bpe -c output/th.32000.bpe < dataset/newtest.seg.th > output/test.bpe.th
subword-nmt apply-bpe -c output/zh.32000.bpe < dataset/newtest.seg.zh > output/test.bpe.zh



