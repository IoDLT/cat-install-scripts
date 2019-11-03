#!/bin/bash
declare -a dirs_to_clean=(boost google mongodb rocksdb source zeromq)
rm -rf ${dirs_to_clean[@]}