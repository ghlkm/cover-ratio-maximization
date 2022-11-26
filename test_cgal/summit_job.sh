#! /bin/bash

#     * -d 4 -k 10 -u USER4d10k.txt -p HOTEL4D.txt -P HOTEL4D_P.txt -un 5000 -pn 186637 -Pn 10000
#     * -obs1 1 -obs2 1 -obs3 1 -obs4 0 -obs5 1 -prunk 512 -p_gen 10000000 -out 1
# shellcheck disable=SC2164
cd ./cmake-build-debug

declare -a cmds=(
"./test_cgal -d 4 -k 10 -u USER4d10k.txt -p HOTEL4D.txt -P HOTEL4D_P.txt -un 1000 -pn 186637 -Pn 10000 -obs1 1 -obs2 1 -obs3 1 -obs4 0 -obs5 1 -prunk 512 -p_gen 10000000 -out 0"
"./test_cgal -d 4 -k 10 -u USER4d10k.txt -p HOTEL4D.txt -P HOTEL4D_P.txt -un 500 -pn 186637 -Pn 10000 -obs1 1 -obs2 1 -obs3 1 -obs4 0 -obs5 1 -prunk 512 -p_gen 10000000 -out 1"
)
# shellcheck disable=SC2068
for cmd in "${cmds[@]}";do
  $cmd
done
