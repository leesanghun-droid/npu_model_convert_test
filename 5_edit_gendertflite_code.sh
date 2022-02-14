#!/bin/bash
cp ../../../../aml_npu_app/detect_library/inception/makefile.linux 		./nbg_unify_genderh5/
cp ../../../../aml_npu_app/detect_library/inception/makefile.linux.def 	./nbg_unify_genderh5/
cp ../../../../aml_npu_app/detect_library/inception/makefile.target_name 	./nbg_unify_genderh5/
cp ../../../../aml_npu_app/detect_library/inception/build_vx.sh 		./nbg_unify_genderh5/
cp -r ./size128 ./nbg_unify_genderh5/
cp -r ./size200 ./nbg_unify_genderh5/
cp ./build.sh ./nbg_unify_genderh5/
cp ./edit_code/vnn_post_process.c ./nbg_unify_genderh5/vnn_post_process.c
