#!/bin/bash
set -e

# 为 Zola 版本和资产名称定义变量
ZOLA_VERSION="v0.20.0"
ARCH="x86_64-unknown-linux-gnu"
ASSET_NAME="zola-${ZOLA_VERSION}-${ARCH}.tar.gz"
DOWNLOAD_URL="https://github.com/getzola/zola/releases/download/${ZOLA_VERSION}/${ASSET_NAME}"

# 使用 curl 下载 Zola
echo "正在从 ${DOWNLOAD_URL} 下载 Zola..."
curl -L -o "${ASSET_NAME}" "${DOWNLOAD_URL}"

# 解压 tarball 并使 zola 二进制文件可执行
tar -xvf "${ASSET_NAME}"
chmod +x zola

echo "Zola 已准备就绪。"
echo "开始构建"

./zola build