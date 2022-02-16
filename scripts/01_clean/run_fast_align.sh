
paste dataset/train.seg.zh dataset/train.seg.th | sed -E 's/\t/ ||| /g' > zh_th
paste dataset/train.seg.th dataset/train.seg.zh | sed -E 's/\t/ ||| /g' > th_zh

# remove lines which have an empty source or target
sed -e '/^ |||/d' -e '/||| $/d' zh_th > zh_th.clean
sed -e '/^ |||/d' -e '/||| $/d' th_zh > th_zh.clean

fast_align -i zh_th.clean -d -o -p ./output/forward.prob -v -s -N > ./output/forward.align
fast_align -i th_zh.clean -d -o -p ./output/reverse.prob -v -s -N > ./output/reverse.align

rm th_zh*
rm zh_th*
