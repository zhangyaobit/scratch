python benchmark.py -g -m bert-base-cased --sequence_length 32 384 --batch_sizes 1 32 --provider=migraphx -p fp16 --disable_gelu --disable_layer_norm --disable_attention --disable_skip_layer_norm --disable_embed_layer_norm --disable_bias_skip_layer_norm --disable_bias_gelu

python benchmark.py -g -m bert-large-uncased --sequence_length 32 384 --batch_sizes 1 32 --provider=migraphx -p fp16 --disable_gelu --disable_layer_norm --disable_attention --disable_skip_layer_norm --disable_embed_layer_norm --disable_bias_skip_layer_norm --disable_bias_gelu

python benchmark.py -g -m distilgpt2 --model_class AutoModelForCausalLM --sequence_length 32 384 --batch_sizes 1 8 --provider=migraphx -p fp16 --disable_gelu --disable_layer_norm --disable_attention --disable_skip_layer_norm --disable_embed_layer_norm --disable_bias_skip_layer_norm --disable_bias_gelu

