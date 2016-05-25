#!/bin/bash

# clone用のGitをcloneしてcommit用のGitリポジトリを作成する
git clone result updated-result

cd updated-result/
# 前Task出力結果をGitのcommit用のGit作業ディレクトリに移動する
mv -f ../out/* ./

git config --global user.email "knakamura at pivotal dot io"
git config --global user.name "Kan Nakamura"

git add -A
git commit -m "Update result log"
