#!/bin/bash

./build_vx.sh
./bin_r_cv4/detect_inception ./gender_tflite.nb ./size128/10.jpg
./bin_r_cv4/detect_inception ./gender_tflite.nb ./size128/30.jpg
./bin_r_cv4/detect_inception ./gender_tflite.nb ./size128/60.jpg
./bin_r_cv4/detect_inception ./gender_tflite.nb ./size128/110.jpg
