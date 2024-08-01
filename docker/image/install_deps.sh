#!/bin/sh

set -e -x

echo "Installing dependencies"

apt-get update

DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

apt-get install -y software-properties-common

add-apt-repository -y ppa:ubuntu-toolchain-r/test

apt-get install -y wget rsync

# LLVM
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
add-apt-repository -y "deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-17 main"

# CMake
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc | apt-key add -
apt-add-repository 'deb https://apt.kitware.com/ubuntu/ jammy main'

apt-get update

apt-get install -y \
    cmake \
    make \
    vim \
    git \
    build-essential \
    linux-tools-common \
	linux-tools-generic \
    g++-13 \
    clang-17 \
    clang-format-17 \
	clang-tidy-17 \
	libc++-17-dev \
	libc++abi-17-dev \
	libclang-rt-17-dev \
	clangd-17 \
	lldb-17 \
    libsdl2-dev \
    libsdl2-image-dev \
    libsdl2-ttf-dev \
    libsdl2-mixer-dev \
    zlib1g-dev \
    libavformat-dev \
    libswscale-dev \
    libboost-dev \
    libboost-filesystem-dev \
    libboost-system-dev \
    libboost-thread-dev \
    libboost-program-options-dev \
    libboost-locale-dev \
    libboost-iostreams-dev \
    qtbase5-dev \
    libtbb-dev \
    libluajit-5.1-dev \
    liblzma-dev \
    libsqlite3-dev \
    qttools5-dev \
    ninja-build \
    ccache \
    python3 \
	python3-pip \
	python3-venv \
    ca-certificates \
	openssh-server \
	autoconf \
