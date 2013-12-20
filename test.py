#!/usr/bin/env python3

import os
import sys
import subprocess

if len(sys.argv) < 2:
    sys.exit(1)

error = 0
error_list = list()
FNULL = open(os.devnull, 'w')

files = [i for i in os.listdir(sys.argv[1]) if i.endswith(".cpp")]

for i in files:
    try:
        subprocess.check_call(["./minic++",
                               "--type-only",
                               sys.argv[1]+"/"+i],
                              #stdout=FNULL,
                              #stderr=FNULL)
                             )
    except subprocess.CalledProcessError:
        error += 1
        error_list.append(i)

print(str(len(files))+" fichiers testés.")
print(str(error)+" erreurs.\n")

print("Différences entre les deux listes :")
for i in list(set(files) - set(error_list)):
    print("\t"+sys.argv[1]+"/"+i)
