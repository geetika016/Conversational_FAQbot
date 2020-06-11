bert-serving-start \
    -pooling_layer -4 -3 -2 -1 \
    -model_dir=./cased_L-12_H-768_A-12 \
    -num_worker=2 \
    -max_seq_len=512