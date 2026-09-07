# 《大数据与人工智能》Git 完整实操手册

> 适用：Windows + Git Bash / PowerShell
> 你已经完成：Git 2.55 ✅ · Python 3.12.10 ✅ · VS Code 1.136 ✅ · 本地课程骨架 ✅ · 首次本地 commit ✅

---

## 一、在 GitHub 网页创建课程仓库

1. 浏览器登录 [github.com](https://github.com)，点击右上角 **+** → **New repository**（或直接访问 `https://github.com/new`）
2. 填写：
   - **Repository name**：`bigdata-ai`（或你喜欢的英文小写名）
   - **Description**（可选）：`大数据与人工智能 课程作业与项目`
   - **Public**（免费、公开）或 **Private**（私密）—— 按需选择
   - **不要勾选** "Add a README" / ".gitignore" / "license"（因为本地已建好，避免冲突）
3. 点击绿色 **Create repository**
4. 创建后你会看到仓库主页，**复制 HTTPS 地址**（形如 `https://github.com/guoshanyongchun/bigdata-ai.git`）

---

## 二、生成访问令牌（HTTPS 推送凭据）

2021 年起 GitHub **不再允许用账号密码推送**，必须用 Personal Access Token（PAT）或 SSH。

1. 登录 GitHub → 右上角头像 → **Settings**
2. 左侧菜单拉到最底 → **Developer settings**
3. **Personal access tokens** → **Tokens (classic)** → **Generate new token (classic)**
4. 填 Note（如 `git-push`），**勾选** `repo` 权限（完整勾选 repo 复选框）
5. 有效期自选，点 **Generate token**
6. **立即复制**生成的 token（`ghp_xxxxxxxx`，只显示一次，务必保存！）

> 也可以更简单：创建 token 页面选 **Fine-grained tokens**，仓库访问权限勾选你的课程仓库 + Contents 读写。

---

## 三、配置 git 身份（建议全局）

```bash
git config --global user.name "guoshanyongchun"
git config --global user.email "你的真实邮箱"
# 若不想泄露邮箱，用 GitHub noreply 邮箱（Settings→Emails 里能看到）
```

把本地占位邮箱改成你的真实邮箱：

```bash
cd "C:/Users/97545/WorkBuddy/大数据与人工智能"
git config user.email "你的真实邮箱"
git commit --amend --reset-author --no-edit   # 修正刚才演示 commit 的作者邮箱
```

---

## 四、把本地仓库推送到远程（push）

本地骨架已 init 并完成首次 commit，直接用现成命令推送：

```bash
cd "C:/Users/97545/WorkBuddy/大数据与人工智能"

# 1. 关联远程仓库（换成你刚才复制的地址）
git remote add origin https://github.com/guoshanyongchun/bigdata-ai.git

# 2. 检查远程是否配置成功
git remote -v

# 3. 推送 main 分支到远程
git push -u origin main
```

- 第一次 push 会弹出登录框 → 用户名填 `guoshanyongchun`，**密码处粘贴 token**（不是账号密码）
- Windows 会缓存凭据，之后 push 不再询问
- 成功后刷新 GitHub 网页即可看到全部文件

---

## 五、clone（在新电脑/新位置拉取仓库）

以后要在别处重新获得该仓库的副本：

```bash
# 在你想放置的目录下执行（例如你的主目录）
cd ~

# 克隆到本地
git clone https://github.com/guoshanyongchun/bigdata-ai.git

# 进入仓库
cd bigdata-ai
```

---

## 六、日常 add → commit → push 循环（你的课程作业就这样提交）

```bash
# 1. 查看哪些文件有改动
git status

# 2. 把改动加入暂存区（全部：git add .）
git add notebooks/你的实验.py

# 3. 提交（写清本次做了什么）
git commit -m "完成第三次实验：线性回归"

# 4. 推送到 GitHub
git push
```

---

## 七、本次已演示的 Git 基本命令回顾

| 命令 | 作用 | 本次结果 |
|------|------|---------|
| `git init` | 初始化本地仓库 | ✅ 已执行 |
| `git add .` | 加入暂存区 | ✅ 7 文件 |
| `git commit -m "..."` | 提交快照 | ✅ `42ebb26` |
| `git status` | 查看工作区状态 | ✅ clean |
| `git log --oneline` | 查看提交历史 | ✅ 可见 |
| `git remote add origin URL` | 关联远程 | ✅ 已配 `bigdata-ai.git` |
| `git push -u origin main` | 推送到远程 | ✅ 已尝试(认证完成，请见下方状态) |
| `git clone URL` | 拉取远程仓库 | 待你执行 |

---

## 常见问题

- **push 报 "remote: Support for password authentication was removed"** → 说明把账号密码当成了凭据，应改用 token（第四步）
- **想改 commit 邮箱** → `git config user.email 新邮箱` 后 `git commit --amend --reset-author`
- **VS Code 里操作**：安装 GitHub + Python + Jupyter 扩展后，可在左侧"源代码管理"面板可视化点按 add/commit/push，无需记命令
