fairseq-preprocess --destdir output/data-bin-test \
 --srcdict output/data-bin/dict.zh.txt --tgtdict output/data-bin/dict.th.txt \
--source-lang zh --target-lang th \
--testpref output/test.bpe --workers 4
