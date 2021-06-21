# Atcoder tools の Docker イメージ

## 概要

Atcoder tools、g++、boost と Atcoder Library が使用可能な Docker イメージです。
input struct は [競技プログラミングでC++を書くときに意識していること](https://blog.knshnb.com/posts/competitive-cplusplus-real/)
のものを使用させていただいてます。

## ビルド方法

`sudo docker build . -t atcoder-tools` でイメージをビルドして、
`alias atcoder-tools="sudo docker run --rm -itv \$(pwd):/pwd -v ~/.local/share/atcoder-tools:/home/user/.local/share/atcoder-tools -u $(id -u) atcoder"`
を `~/.*sh_profile` みたいなファイルに書いてください。
すぐ使いたかったら `source ~/.*sh_profile` を実行してください。

## 使い方

`entrypoint.sh` では、カレントディレクトリに `main.cpp` が存在していればビルドして、そのあとは引数を全部 atcoder-tools に渡しているだけです。
上記 alias を使っていれば、`atcoder-tools test` を実行するだけでビルド〜テストまで実行されます。
