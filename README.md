# 大数据与人工智能 · 课程仓库

> 个人课程仓库 · 记录学习笔记、实验代码与项目
> 作者：nanasun10086
> 远程仓库：https://github.com/nanasun10086/bigdata-ai

## 📁 目录结构

```
bigdata-ai/
├── README.md          # 本说明文件
├── .gitignore         # Git 忽略规则
├── code/              # Python 脚本与实验代码
│   └── hello.py       # 第一个 Python 脚本(已验证可在 Python 3.12 运行)
├── notes/             # 课堂笔记
├── data/              # 数据集(默认不入库,体积大或敏感)
├── .workbuddy/
│   └── skills/        # WorkBuddy 项目级 Skill（本地能力封装）
│       ├── concept-learning-generator/
│       │   └── SKILL.md    # 概念学习资料生成 Skill
│       └── concept-learning-skill/
│           └── SKILL.md    # 概念学习资料生成 Skill（副本）
└── learning-materials/      # 概念学习产出物（本仓库新增用途）
    ├── concept_agent.html           # 概念学习资料 · Agent
    ├── concept_llm_context.html     # 概念学习资料 · 大模型的上下文
    ├── concept_skill.html           # 概念学习资料 · Skill
    └── concept-relationship.md      # Agent·上下文·Skill 三者关系图(Mermaid)
```

---

## 📚 概念学习 Skill（本仓库的另一用途）

> 本仓库同时作为 **「概念学习资料生成 Skill」** 的开发与产出空间：
> 用一个通用 Skill，把任意一个新概念生成结构化的《概念学习资料》，并沉淀成可复习、可分享的文档。

### 🎯 仓库用途（概念学习部分）
- **承载一个通用 Skill**：`concept-learning-skill`，能接收任意新概念（技术 / 科学 / 经济 / 架构 / 抽象概念均可）作为输入。
- **沉淀学习产出物**：把生成的学习资料（HTML / MD）统一存放在 `learning-materials/`。
- **演示三者关系**：`concept-relationship.md` 用 Mermaid 图解 Agent、上下文、Skill 的协作关系。

### 🗂️ Skill 存放路径
| 用途 | 路径 |
|------|------|
| 项目级 Skill（本仓库内可被识别） | `.workbuddy/skills/concept-learning-generator/SKILL.md` |
| 项目级 Skill（按用户指定名另存） | `.workbuddy/skills/concept-learning-skill/SKILL.md` |

> 两份 `SKILL.md` 内容一致（已通过 `diff` 校验）。其 YAML `name` 均为 `concept-learning-generator`，
> 内含：适用场景 / 输入信息 / 六步生成 SOP / 固定六段式输出结构 / 资料来源要求 / 自检清单。
>
> ⚠️ **注意：** `.workbuddy/` 已被 `.gitignore` 排除，**Skill 文件仅存在于本地工作区，不会随仓库推送到 GitHub**。
> 若需在其它机器/协作者间共享该 Skill，请单独复制 `SKILL.md`，或手动移除 `.gitignore` 中对应排除项。

### 🚀 调用方法
在支持 WorkBuddy Skills 的对话中，直接以自然语言发出概念学习请求即可自动触发该 Skill，例如：
```text
帮我生成一份「哈希表」的概念学习资料
请用中文讲解一下「贝叶斯定理」，并输出成 HTML
```
触发关键词：`概念`、`学习`、`弄懂`、`搞懂`、`掌握`、`是什么`、`怎么理解`、`学习资料` 等。
Skill 命中后会按其六段式结构输出：**个人解释 → 核心机制 → 应用场景 → 边界辨析 → 来源链接 → 学习回顾自测**。
如需保存成文件，可说明期望格式（如"保存为 HTML 到 learning-materials/"）。

### ✅ 人工核查声明
> ⚠️ **重要声明：** 本仓库中 `learning-materials/` 下的学习资料内容与结论，
> **均已由人工（作者本人）逐份核查与确认**，非未经审阅的机器直接产出。
> 生成工具负责"结构化与初稿"，最终正确性、适用性与发布责任以人工复核为准。

## 🛠️ 开发环境

- **Git**：2.55.0
- **Python**：3.12.10
- **VS Code**：1.136.1

## 🚀 快速开始

```bash
# 克隆仓库
git clone https://github.com/nanasun10086/bigdata-ai.git

# 进入目录
cd bigdata-ai

# 运行第一个脚本
"C:/Users/97545/AppData/Local/Programs/Python/Python312/python.exe" code/hello.py
```

## 📚 日常开发流程

```bash
# 查看修改状态
git status

# 添加改动到暂存区
git add .

# 提交改动
git commit -m "说明本次提交内容"

# 推送到 GitHub
git push
```

## 📝 说明

- 使用 **Python 3.12** 编写课程实验
- 使用 **VS Code** 打开本仓库,推荐安装 Python 扩展
- 数据文件默认不入库,放在 `data/` 目录里的内容被 `.gitignore` 排除
