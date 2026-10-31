#!/bin/bash
#########################################################
# Uncomment and change the variables below to your need:#
#########################################################

# Xcode Command Line Tools が無い環境向け: Homebrew の git / python3.10 を使う
export PATH="/opt/homebrew/bin:$PATH"
export GIT="/opt/homebrew/bin/git"
# 相対名にしておくこと（絶対パスだと venv を有効化しても venv 側の Python が使われない）
python_cmd="python3.10"

# Install directory without trailing slash
#install_dir="/home/$(whoami)"

# Name of the subdirectory
#clone_dir="stable-diffusion-webui"

# Commandline arguments for webui.py, for example: export COMMANDLINE_ARGS="--medvram --opt-split-attention"
# macOS (Apple Silicon) 向けデフォルト + --api
export COMMANDLINE_ARGS="--api --skip-torch-cuda-test --upcast-sampling --no-half-vae --use-cpu interrogate"

# python3 executable
#python_cmd="python3"

# git executable
#export GIT="git"

# python3 venv without trailing slash (defaults to ${install_dir}/${clone_dir}/venv)
#venv_dir="venv"

# script to launch to start the app
#export LAUNCH_SCRIPT="launch.py"

# install command for torch
# torch 2.0.1 は新しい macOS の MPS でモデル読み込み時にクラッシュするため 2.1.2 を使う
export TORCH_COMMAND="pip install torch==2.1.2 torchvision==0.16.2"
#export TORCH_COMMAND="pip install torch==1.12.1+cu113 --extra-index-url https://download.pytorch.org/whl/cu113"

# Requirements file to use for stable-diffusion-webui
#export REQS_FILE="requirements_versions.txt"

# Fixed git repos
# Stability-AI/stablediffusion は GitHub から削除されたため、同一コミット(cf1d67a)を持つミラーを使う
export STABLE_DIFFUSION_REPO="https://github.com/w-e-w/stablediffusion.git"
#export K_DIFFUSION_PACKAGE=""
#export GFPGAN_PACKAGE=""

# Fixed git commits
#export STABLE_DIFFUSION_COMMIT_HASH=""
#export CODEFORMER_COMMIT_HASH=""
#export BLIP_COMMIT_HASH=""

# Uncomment to enable accelerated launch
#export ACCELERATE="True"

# Uncomment to disable TCMalloc
#export NO_TCMALLOC="True"

###########################################
