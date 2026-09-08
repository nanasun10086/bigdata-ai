@echo off
chcp 65001 >nul
title Push bigdata-ai to GitHub

cd /d "C:\Users\97545\Desktop\bigdata-ai"

echo ==============================================
echo   推送课程仓库到 GitHub
echo   远程: https://github.com/nanasun10086/bigdata-ai.git
echo ==============================================
echo.
echo 本地最近 3 笔 commit:
git log --oneline -3
echo.
echo 当前 remote:
git remote get-url origin
echo.
echo ==============================================
echo   准备执行 git push -u origin main
echo   若弹出登录窗口:
echo     用户名: nanasun10086
echo     密码:   Personal Access Token (ghp_...)
echo ==============================================
echo.

git push -u origin main
set RC=%errorlevel%

echo.
if %RC%==0 (
    echo ==============================================
    echo   [成功] 9 笔 commit 已推送到 GitHub
    echo   访问 https://github.com/nanasun10086/bigdata-ai 查看
    echo ==============================================
) else (
    echo ==============================================
    echo   [失败] 错误码=%RC%
    echo.
    echo   最常见: Authentication failed
    echo   解决: 去 https://github.com/settings/tokens
    echo         生成 PAT (勾选 repo), 复制 ghp_xxx
    echo         再双击本脚本 密码处粘贴 token
    echo ==============================================
)
echo.
pause