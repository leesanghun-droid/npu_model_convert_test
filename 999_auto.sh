#!/bin/bash
sudo rm -r ./nbg_unify_genderh5
./3_make_gendertflite_model_and_code.sh
./5_edit_gendertflite_code.sh
./6_copy_khadas.sh
