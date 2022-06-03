# please run in directory: onnxruntime/onnxruntime/python/tools/transformers/dir_created_by_you:

CUDA_VISIBLE_DEVICES=0 /usr/bin/numactl --physcpubind=0-31,128-159 --preferred=0 python ../benchmark.py -g -m bert-base-cased --sequence_length 384 --batch_sizes 64 --provider=rocm -p fp16 --disable_embed_layer_norm &
CUDA_VISIBLE_DEVICES=1 /usr/bin/numactl --physcpubind=0-31,128-159 --preferred=0 python ../benchmark.py -g -m bert-base-cased --sequence_length 384 --batch_sizes 64 --provider=rocm -p fp16 --disable_embed_layer_norm

#CUDA_VISIBLE_DEVICES=2 /usr/bin/numactl --physcpubind=0-31,128-159 --preferred=0 python ../benchmark.py -g -m bert-base-cased --sequence_length 384 --batch_sizes 64 --provider=rocm -p fp16 --disable_embed_layer_norm &
#CUDA_VISIBLE_DEVICES=3 /usr/bin/numactl --physcpubind=0-31,128-159 --preferred=0 python ../benchmark.py -g -m bert-base-cased --sequence_length 384 --batch_sizes 64 --provider=rocm -p fp16 --disable_embed_layer_norm

#CUDA_VISIBLE_DEVICES=4 /usr/bin/numactl --physcpubind=32-63,160-191 --preferred=0 python ../benchmark.py -g -m bert-base-cased --sequence_length 384 --batch_sizes 64 --provider=rocm -p fp16 --disable_embed_layer_norm &
#CUDA_VISIBLE_DEVICES=5 /usr/bin/numactl --physcpubind=32-63,160-191 --preferred=0 python ../benchmark.py -g -m bert-base-cased --sequence_length 384 --batch_sizes 64 --provider=rocm -p fp16 --disable_embed_layer_norm

#CUDA_VISIBLE_DEVICES=6 /usr/bin/numactl --physcpubind=32-63,160-191 --preferred=0 python ../benchmark.py -g -m bert-base-cased --sequence_length 384 --batch_sizes 64 --provider=rocm -p fp16 --disable_embed_layer_norm &
#CUDA_VISIBLE_DEVICES=7 /usr/bin/numactl --physcpubind=32-63,160-191 --preferred=0 python ../benchmark.py -g -m bert-base-cased --sequence_length 384 --batch_sizes 64 --provider=rocm -p fp16 --disable_embed_layer_norm

#CUDA_VISIBLE_DEVICES=8 /usr/bin/numactl --physcpubind=64-95,192-223 --preferred=0 python ../benchmark.py -g -m bert-base-cased --sequence_length 384 --batch_sizes 64 --provider=rocm -p fp16 --disable_embed_layer_norm &
#CUDA_VISIBLE_DEVICES=9 /usr/bin/numactl --physcpubind=64-95,192-223 --preferred=0 python ../benchmark.py -g -m bert-base-cased --sequence_length 384 --batch_sizes 64 --provider=rocm -p fp16 --disable_embed_layer_norm

#CUDA_VISIBLE_DEVICES=10 /usr/bin/numactl --physcpubind=64-95,192-223 --preferred=0 python ../benchmark.py -g -m bert-base-cased --sequence_length 384 --batch_sizes 64 --provider=rocm -p fp16 --disable_embed_layer_norm &
#CUDA_VISIBLE_DEVICES=11 /usr/bin/numactl --physcpubind=64-95,192-223 --preferred=0 python ../benchmark.py -g -m bert-base-cased --sequence_length 384 --batch_sizes 64 --provider=rocm -p fp16 --disable_embed_layer_norm

#CUDA_VISIBLE_DEVICES=12 /usr/bin/numactl --physcpubind=96-127,224-255 --preferred=0 python ../benchmark.py -g -m bert-base-cased --sequence_length 384 --batch_sizes 64 --provider=rocm -p fp16 --disable_embed_layer_norm &
#CUDA_VISIBLE_DEVICES=13 /usr/bin/numactl --physcpubind=96-127,224-255 --preferred=0 python ../benchmark.py -g -m bert-base-cased --sequence_length 384 --batch_sizes 64 --provider=rocm -p fp16 --disable_embed_layer_norm

#CUDA_VISIBLE_DEVICES=14 /usr/bin/numactl --physcpubind=96-127,224-255 --preferred=0 python ../benchmark.py -g -m bert-base-cased --sequence_length 384 --batch_sizes 64 --provider=rocm -p fp16 --disable_embed_layer_norm &
#CUDA_VISIBLE_DEVICES=15 /usr/bin/numactl --physcpubind=96-127,224-255 --preferred=0 python ../benchmark.py -g -m bert-base-cased --sequence_length 384 --batch_sizes 64 --provider=rocm -p fp16 --disable_embed_layer_norm
