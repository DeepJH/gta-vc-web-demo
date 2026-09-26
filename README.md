# GTA Vice City Web / HTML5 HD Edition 🌴🚗

基于 WebAssembly (WASM) 与 WebGL 架构的高清复刻版《侠盗猎车手：罪恶都市》（GTA: Vice City）网页版运行环境。

无需在本地重新逆向编译繁琐的 C++ 代码，通过 Emscripten 运行时、流式解压及 WebGL 2.0 图形管线，直接在现代浏览器中全速运行原汁原味的 GTA VC 完整世界。

---

## 🌟 特性与亮点

- 🎮 **原生级画质与性能**：
  - 基于 WebGL 2.0 渲染，默认启用 1080p (1920x1080) 渲染分辨率。
  - 调优渲染参数：视距增强（DrawDistance 2.5）、多重采样抗锯齿（MultiSampling 4x）、Neo 高光反射与车身金属质感着色器。
  - 支持 60FPS+ 高帧率流畅体验。
- 🕹️ **完整外设与操作适配**：
  - 完整键盘 + 鼠标指针锁定（Pointer Lock）控制。
  - 内置手机/平板触摸屏虚拟双摇杆与动作按键适配。
  - 支持常见 USB / 蓝牙游戏手柄。
- 💾 **多维度存档支持**：
  - 支持浏览器 IndexedDB 本地保存。
  - 支持服务端自定义存档（`--custom_saves`）。
  - 支持云存档（DOS.Zone SDK）。
- 🛠️ **内置作弊器与调试菜单**：
  - 按 **F3** 打开作弊与内存扫描菜单（无限生命、武器包、全载具召唤、飞行穿墙等）。

---

## 🚀 快速启动

### 方式一：一键脚本启动（推荐）

直接运行项目内置的启动脚本：

```bash
chmod +x start.sh
./start.sh
```

打开浏览器访问：[http://localhost:8000](http://localhost:8000) 即可开始游戏。

### 方式二：Python 手动启动

1. 创建并激活虚拟环境，安装依赖：
```bash
uv venv .venv
source .venv/bin/activate
uv pip install -r requirements.txt
# 或者使用普通 pip: pip install -r requirements.txt
```

2. 启动服务：
```bash
python server.py --port 8000 --packed https://folder.morgen.qzz.io/revcdos.bin --custom_saves
```

### 方式三：Docker 一键部署

```bash
docker compose up -d --build
```

---

## ⚙️ URL 参数配置

通过在访问 URL 后追加参数快速调整运行模式：

| 参数 | 示例 | 描述 |
| :--- | :--- | :--- |
| `configurable` | `?configurable=1` | 进入游戏前显示分辨率、作弊、语言配置面板 |
| `cheats` | `?cheats=1` | 默认开启作弊菜单（游戏中按 F3 打开） |
| `max_fps` | `?max_fps=60` | 锁定最高帧率（默认不锁定） |
| `lang` | `?lang=en` | 语言选择（`en` 英语 / `ru` 俄语） |

---

## 🎮 默认键位操作

* **移动**：`W` `A` `S` `D`
* **视角控制**：鼠标移动
* **开火 / 攻击**：鼠标左键
* **瞄准 / 手刹**：鼠标右键 / 空格键
* **跳跃**：空格键 (`Space`)
* **疾跑**：左 `Shift`
* **上/下车**：`F` 或 `Enter`
* **切换武器**：鼠标滚轮 或 `Q` / `E`
* **蹲下**：`C`
* **喇叭**：`Shift`
* **作弊菜单**：`F3`

---

## 📜 许可证与致谢

- 本项目基于开源逆向工程 reVC 与 reVCDOS 运行时构建。
- 游戏版权归属于 Rockstar Games / Take-Two Interactive。本项目仅供学习与技术交流。
