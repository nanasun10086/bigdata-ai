#!/usr/bin/env bash
# =============================================================
# 《大数据与人工智能》课程 · 一键推送到 GitHub
# 使用方式（在 Windows 的 Git Bash 中）：
#   cd "C:/Users/97545/WorkBuddy/大数据与人工智能"
#   bash push-to-github.sh
# 前提：已创建远程仓库 bigdata-ai 并已关联 origin（已就绪）
# 说明：本地已 init 并提交 3 笔，本脚本主要完成最后 git push
# =============================================================

set -e

echo "=============================================="
echo "  课程仓库一键推送到 GitHub"
echo "=============================================="
echo ""

# 1. 确认/配置提交身份
echo "请输入你的 git 提交邮箱（Enter 保留当前值）："
echo "  当前值：$(git config user.email 2>/dev/null || echo '(未设置)')"
read -r EMAIL
if [ -n "$EMAIL" ]; then
  git config user.email "$EMAIL"
  echo ">>> 已设置邮箱: $EMAIL"
fi

echo ""
# 2. 关联远程仓库
CURRENT_REMOTE=$(git remote get-url origin 2>/dev/null || echo "")
if [ -z "$CURRENT_REMOTE" ]; then
  echo "请输入远程仓库 HTTPS 地址（形如）："
  echo "  https://github.com/nanasun10086/bigdata-ai.git"
  read -r REPO_URL
  if [ -z "$REPO_URL" ]; then
    echo "!! 未输入地址，无法继续。"; exit 1
  fi
  git remote add origin "$REPO_URL"
  echo ">>> 已关联远程: $REPO_URL"
else
  echo ">>> 检测到已关联远程: $CURRENT_REMOTE"
fi

echo ""
# 3. 提交本地改动（如有）
if ! git diff --cached --quiet 2>/dev/null || [ -n "$(git status --porcelain)" ]; then
  git add -A
  git commit -m "课程更新 $(date +%Y-%m-%d)" || echo "(无新改动可提交)"
fi

echo ""
# 4. 推送到远程
echo ">>> 开始推送 main 分支到 GitHub ..."
echo ">>> 若弹出登录：用户名填 nanasun10086，密码处粘贴你的 token"
git push -u origin main

echo ""
echo "=============================================="
echo "  推送成功！刷新 GitHub 网页即可看到文件"
echo "=============================================="
