@echo off
chcp 65001 >nul
title 课程仓库一键推送到 GitHub

cd /d "C:\Users\97545\WorkBuddy\大数据与人工智能"

echo ==============================================
echo   课程仓库一键推送到 GitHub
echo   远程: nanasun10086/bigdata-ai
echo ==============================================
echo.
echo 当前身份: %USERNAME%
echo 配置: %USERNAME% / 975452906@qq.com
echo.
echo 按任意键开始推送(若弹出登录窗口请登录授权)...
echo.
pause >nul

echo [1/3] 检查待推送提交...
for /f %%i in ('git rev-list --count main') do set LOCAL=%%i
echo   本地 main 共有 %LOCAL% 笔 commit
echo.

echo [2/3] 检查 remote...
git remote get-url origin
echo.

echo [3/3] 推送到 GitHub...
echo   (若弹出 GitHub 登录窗口,用户名填 nanasun10086)
echo.
git push -u origin main

if %errorlevel% neq 0 (
    echo.
    echo ==============================================
    echo   推送未完成
    echo ==============================================
    echo.
    echo 常见原因与解决:
    echo.
    echo 1) 认证失败 ^("Authentication failed"^)
    echo    - 去 https://github.com/settings/tokens
    echo    - 点 "Generate new token" ^-> "Generate new token (classic)"
    echo    - 勾选 "repo" 权限
    echo    - 拉到最底点生成 token
    echo    - 复制 "ghp_xxx..." 开头的 token
    echo    - 重新双击本脚本,密码处粘贴 token
    echo.
    echo 2) 仓库不存在 ^("Repository not found"^)
    echo    - 浏览器打开 https://github.com/nanasun10086/bigdata-ai
    echo    - 确认仓库已建好
    echo.
    pause
    exit /b 1
)

echo.
echo ==============================================
echo   推送成功!
echo   访问 https://github.com/nanasun10086/bigdata-ai
echo ==============================================
pause
