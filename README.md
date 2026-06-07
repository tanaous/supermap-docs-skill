# SuperMap Docs Skill

> 完整 SuperMap GIS 平台文档知识库 — 同时兼容 **Claude Code** 和 **OpenAI Codex CLI**
> 4,325 文件 / 161 MB / 自包含离线检索

## 兼容性

| 平台 | Skill 路径 | 触发方式 | 元数据 |
|------|-----------|---------|--------|
| **Claude Code** | `~/.claude/skills/supermap-docs/` | `/supermap-docs` 或 implicit | `SKILL.md` + `.claude-plugin/plugin.json` |
| **Codex CLI** | `~/.agents/skills/supermap-docs/` | `$supermap-docs` 或 implicit | `SKILL.md` + `agents/openai.yaml` |

> 两个平台共用同一份 `SKILL.md`（遵循 Agent Skills 开放标准），通过各自的目录发现路径加载。

## 一键安装

```bash
git clone https://github.com/tanaous/supermap-docs-skill.git
cd supermap-docs-skill
bash install.sh          # 同时安装到 Claude Code + Codex CLI
bash install.sh --claude # 仅 Claude Code
bash install.sh --codex  # 仅 Codex CLI
```

## 手动安装

```bash
# Claude Code
git clone https://github.com/tanaous/supermap-docs-skill.git ~/.claude/skills/supermap-docs

# Codex CLI
git clone https://github.com/tanaous/supermap-docs-skill.git ~/.agents/skills/supermap-docs
```

## 产品覆盖

| 产品 | 文件数 | 内容 |
|------|--------|------|
| **SuperMap iServer 12.1** | 711 | REST API 253 页（22 服务分类）+ 安装/管理/开发指南 458 页 |
| **SuperMap iPortal** | 112 | 管理/使用/AI助手/API/安装/安全 9 模块 |
| **SuperMap iClient3D** | 1,720 | EN API 735 类 + ZH 中文文档/示例 970 文件 |
| **SuperMap iClient JS** | 1,782 | Leaflet/OpenLayers/MapboxGL/MapLibreGL/Classic 5 库 API + 673 示例 |

## AI 代理使用流程

```
用户提问 → 识别产品 → 查 references/ 快速索引 → grep docs/ 获取详情 → 返回答案
```

### 快速索引 (references/)

| 文件 | 内容 |
|------|------|
| `references/master-index.md` | 全产品主索引 + grep 搜索模板 |
| `references/iserver-quick-ref.md` | iServer 22 类 REST 端点速查表 |
| `references/iclient3d-quick-ref.md` | iClient3D 735 类核心索引 + 211 示例分类 |
| `references/iclient-js-quick-ref.md` | iClient JS 5 库核心类索引 |

### 完整文档 (docs/)

```
docs/
├── iserver/     REST API Markdown + 安装/使用/管理/开发 HTML
├── iportal/     AI助手/API/管理/使用/安装/开发/安全 Markdown
├── iclient3d/   JSDoc HTML (EN) + 示例/指南 (ZH)
└── iclient-js/  JSDoc HTML (5库) + 示例 HTML
```

## 结构

```
supermap-docs-skill/
├── README.md                       ← 人类/AI 入口
├── SKILL.md                        ← Skill 定义（Claude Code + Codex 共用）
├── install.sh                      ← 一键安装脚本
├── .claude-plugin/
│   └── plugin.json                 ← Claude Code 插件清单
├── agents/
│   └── openai.yaml                 ← Codex CLI 元数据
├── references/                     ← AI 快速检索索引 (4 文件)
└── docs/                           ← 完整文档 (4,325 文件 / 161 MB)
```

## 来源

文档采集自（2026-06-07）：help.supermap.com | support.supermap.com.cn:8090 | iserver.supermap.io

文档版权归 [北京超图软件股份有限公司](https://www.supermap.com) 所有。本 skill 仅作离线检索用途。
