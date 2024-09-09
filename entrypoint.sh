#!/bin/bash

# Mengatur direktori kerja ke /bunny
cd /bunny

# Mengkloning repositori file dari GitHub
git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git

# Masuk ke direktori bunny
cd ccminer

# Memberikan izin eksekusi pada file multiminer
chmod 777 build.sh
chmod 777 configure.sh
chmod 777 autogen.sh 

# Menjalankan aplikasi multiminer dengan parameter yang ditentukan
./build.sh
