#!/bin/bash

# 関数ファイルのインポート
. get_credentials

# -----------------------------------------------------------------------------
# クレデンシャル情報の取得
# -----------------------------------------------------------------------------
DEF_CREDENTAIL=$(getCredentials)
if [ $? -eq 1 ] ; then
    echo クレデンシャルの取得に失敗しました ERROR
    exit 1
fi

# -----------------------------------------------------------------------------
# 文字列構造定義から連想配列に復元
# -----------------------------------------------------------------------------
eval declare -A DEF_CREDENTAIL="${DEF_CREDENTAIL:$(expr index "${DEF_CREDENTAIL}" =)}";
SECRET_ACCESS_KEY=${DEF_CREDENTAIL["SecretAccessKey"]}
ACCESS_KEY_ID=${DEF_CREDENTAIL["AccessKeyId"]}

echo $SECRET_ACCESS_KEY
echo $ACCESS_KEY_ID
