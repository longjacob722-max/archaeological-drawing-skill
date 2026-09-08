# 考古绘图skill

面向考古器物照片、实测数据与既有线图的规范化绘图工作流。它把“看见的器物”转译成可复核、可出版、不过度解释的考古线图。

> 内部调用标识：`$archaeological-artifact-drawing`  
> 用户可见名称：**考古绘图skill**

## 这个 skill 解决什么问题

- 按正投影、俯视/正视/侧视与必要剖面组织器物形制
- 用清晰、克制的线条表达轮廓、结构、凹凸与纹饰
- 对密集纹饰、残损、锈蚀遮蔽和低清照片进行证据分级转译
- 在已给出尺寸或可可靠换算尺寸时，规范添加比例尺
- 将锈蚀、污渍和拍摄背景排除在绘图主体之外，但不遗漏锈蚀下仍可辨识的纹饰
- 对确实无法辨认的局部保留不确定性，禁止凭经验补造

## 核心原则

1. **证据优先**：先读照片与实测数据，再决定线型、视图和细部。
2. **轮廓准确**：先建立整体比例、轴线、边缘和结构，再处理纹饰。
3. **纹饰清楚**：纹饰是器物信息，不因锈蚀、包浆或磨损而被省略；但模糊处只能按图转译，不能臆造。
4. **材质不喧宾夺主**：不把锈蚀斑、反光、阴影、报纸、米格纸等当成器物纹样。
5. **数据必须可追溯**：给出明确尺寸时，在成品中标注与图面一致的比例尺；比例尺不能凭空编造。
6. **出版可读**：线条有主次，剖面有统一排线，标尺和图面保持清晰留白。

## 工作流

```
照片 / 实测数据
      ↓
器物边界、轴线、结构与纹饰证据分层
      ↓
选择视图、比例和剖面表达
      ↓
先轮廓，后结构，再纹饰与细节
      ↓
比例尺、图名、说明与一致性复核
```

## 目录

| 路径 | 内容 |
| --- | --- |
| [SKILL.md](SKILL.md) | 主工作规则与执行流程 |
| [agents/openai.yaml](agents/openai.yaml) | Codex 显示名称与默认调用配置 |
| [references/field-drawing-rules.md](references/field-drawing-rules.md) | 实测、正投影、剖面、线型与比例尺规则 |
| [references/traditional-line-drawing-learning-pack.md](references/traditional-line-drawing-learning-pack.md) | 陶器、石器、金属器、玉石、骨角牙、玻璃和有机物的线描方法 |
| [references/domestic-case-lessons.md](references/domestic-case-lessons.md) | 国内器物绘图案例的归纳与审查要点 |
| [references/web-comparison-lessons.md](references/web-comparison-lessons.md) | 对照公开案例后的查漏补缺记录 |
| [references/domestic-case-gallery.md](references/domestic-case-gallery.md) | 4 个国内器物案例及逐例出处 |
| [references/wadang-case-8a1.md](references/wadang-case-8a1.md) | 瓦当典例：纹饰、尺寸和成品复核 |
| [assets/examples/wadang-8a1-archaeological-plate-v1.svg](assets/examples/wadang-8a1-archaeological-plate-v1.svg) | 瓦当 SVG 矢量主稿 |
| [assets/examples/wadang-8a1-archaeological-plate-v1.png](assets/examples/wadang-8a1-archaeological-plate-v1.png) | 瓦当 PNG 预览 |
| [assets/examples/domestic-bronze-k3qw1-independent.svg](assets/examples/domestic-bronze-k3qw1-independent.svg) | 青铜大口尊 SVG 矢量主稿 |
| [assets/examples/domestic-pottery-ding-m1-3-independent.svg](assets/examples/domestic-pottery-ding-m1-3-independent.svg) | 陶鼎 SVG 矢量主稿 |
| [assets/examples/domestic-porcelain-bowl-m1-1-independent.svg](assets/examples/domestic-porcelain-bowl-m1-1-independent.svg) | 瓷碗 SVG 矢量主稿 |

## 典例：瓦当

该案例把一张正面照片和文字尺寸转成以中心轴、同心结构、四分布局和云纹证据为核心的线图。案例中记录的尺寸包括：当径 16、当心径 6、边轮宽 0.9、边轮厚 1.9、当厚 1.5、纹/缝深 0.6 厘米；正式使用时仍应以原始测量记录复核。

[查看/下载瓦当 SVG 矢量主稿](assets/examples/wadang-8a1-archaeological-plate-v1.svg)

![瓦当考古绘图典例 PNG 预览](assets/examples/wadang-8a1-archaeological-plate-v1.png)

### 原器物图（用户提供）

![瓦当原器物照片（用户提供）](assets/examples/wadang-original-artifact-photo.jpg)

### 人工手绘/尺寸参考图（用户提供）

![瓦当带尺寸人工手绘图（用户提供）](assets/examples/wadang-user-hand-drawing-with-dimensions.png)

这张成品图展示的重点不是“复刻照片质感”，而是：

- 将圆形器物的轮廓、边轮、当心和分区关系说清楚
- 用统一的线条层级提取可确认的云纹与中心网格纹
- 不绘制锈蚀色斑、反光和拍摄背景
- 对低清或残损处保持证据边界，不用程式化纹样替代照片信息

## 其他案例展示

以下 3 例均为依据公开考古资料独立重绘的学习稿，覆盖青铜器、陶器和瓷器。本节同时展示出处图版中的原器物图、人工/原报告线图和本 skill 独立重绘；瓦当另展示用户提供的原器物照片与带尺寸人工手绘图。仅纳入用户明确要求或有出处依据的必要对照素材，逐图性质、出处和版权联系见[国内器物案例展示与出处索引](references/domestic-case-gallery.md)。

### 青铜器｜三星堆 K3QW：1 青铜大口尊

出处：[《四川文物》2024 年第 4 期〈考古中国〉](https://www.sckg.com/uploads/soft/20240924/2-240924145943M8.pdf)。重点展示半剖面、器座/附饰、纹饰分带，以及锈蚀和摄影支撑物的排除。

### 原器物图（原报告图版裁图）

![三星堆 K3QW：1 青铜大口尊原器物图](assets/examples/domestic-bronze-k3qw1-original-photo.png)

### 人工手绘/原报告线图

![三星堆 K3QW：1 青铜大口尊原报告线图](assets/examples/domestic-bronze-k3qw1-published-line-drawing.png)

### 本 skill 独立重绘（SVG 矢量主稿）

[查看/下载青铜大口尊 SVG 矢量主稿](assets/examples/domestic-bronze-k3qw1-independent.svg)

![三星堆 K3QW：1 青铜大口尊独立重绘 PNG 预览](assets/examples/domestic-bronze-k3qw1-independent.png)

### 陶器｜小红门 M1：3 陶鼎

出处：[《北京市朝阳区小红门金代墓葬发掘简报》](https://wwj.beijing.gov.cn/bjww/resource/cms/article/bjww_362762/325981205/2026020515482856873.pdf)。重点展示三足器的器形、器壁、残损和半剖表达；土色、修补色块和摄影阴影不进入线图。

### 原器物图（原报告图版裁图）

![小红门 M1：3 陶鼎原器物图](assets/examples/domestic-pottery-ding-m1-3-original-photo.png)

### 人工手绘/原报告线图

![小红门 M1：3 陶鼎原报告线图](assets/examples/domestic-pottery-ding-m1-3-published-line-drawing.png)

### 本 skill 独立重绘（SVG 矢量主稿）

[查看/下载陶鼎 SVG 矢量主稿](assets/examples/domestic-pottery-ding-m1-3-independent.svg)

![小红门 M1：3 陶鼎独立重绘 PNG 预览](assets/examples/domestic-pottery-ding-m1-3-independent.png)

### 瓷器｜小红门 M1：1 瓷碗

出处：[《北京市朝阳区小红门金代墓葬发掘简报》](https://wwj.beijing.gov.cn/bjww/resource/cms/article/bjww_362762/325981205/2026020515482856873.pdf)。重点展示平面/正视/半剖面的组合；青釉、流釉和光泽不转译为黑块或纹饰。

### 原器物图（原报告图版裁图）

![小红门 M1：1 瓷碗原器物图](assets/examples/domestic-porcelain-bowl-m1-1-original-photo.png)

### 人工手绘/原报告线图

![小红门 M1：1 瓷碗原报告线图](assets/examples/domestic-porcelain-bowl-m1-1-published-line-drawing.png)

### 本 skill 独立重绘（SVG 矢量主稿）

[查看/下载瓷碗 SVG 矢量主稿](assets/examples/domestic-porcelain-bowl-m1-1-independent.svg)

![小红门 M1：1 瓷碗独立重绘 PNG 预览](assets/examples/domestic-porcelain-bowl-m1-1-independent.png)

完整的逐例说明、出处和版权联系见 [国内器物案例展示与出处索引](references/domestic-case-gallery.md)。

## 使用教程

### 1. 准备输入

- 上传同一器物的正面、侧面、背面或俯视照片，并说明每张照片的观察方向。
- 提供可靠的实测尺寸、图注尺寸或清晰的比例尺；没有可靠尺寸时，只要求结构分析稿，不声称按比例。
- 若参考公开报告或网络图版，同时提供出处链接；只有在用户明确要求或来源允许时才纳入必要的低分辨率对照图，并逐图标明来源性质与版权联系。

### 2. 在 Codex 中调用

安装本目录到 `$CODEX_HOME/skills/archaeological-artifact-drawing`，然后调用：

```text
$archaeological-artifact-drawing
```

可直接使用的请求模板：

```text
请按考古绘图skill处理这组照片：
1. 先列出照片—视图—尺寸的证据账本；
2. 先画正投影外轮廓、结构和器壁，再画可辨认纹饰；
3. 锈蚀、包浆、反光、阴影和背景不画，但锈蚀下仍可辨认的纹饰必须画；
4. 不可辨认处留空或断线，不得按常见器形或纹样捏造；
5. 已给出尺寸的视图必须在图下标注对应比例尺；
6. 最终同时输出 SVG 矢量主稿和 PNG 预览；SVG 只用路径/几何元素表达线图，不嵌入原始位图；
7. 交付前逐段对照原照片，并说明待复核区域。
```

### 3. 标准处理顺序

`证据账本 → 视图与基准 → 外轮廓/器壁 → 结构线 → 纹饰分区与单元 → 残损与不确定性 → 尺寸标注与比例尺 → 打印尺寸 QA`

### 4. 交付前检查

检查视图是否对正、比例尺是否与尺寸一致、剖面线是否位于真实切面、锈蚀是否被误画、锈蚀下纹饰是否漏画、纹饰是否清晰精细且未被概括或臆补；最后把成品标为“照片证据转译稿”或“实测图”，不得混淆。

最终交付必须同时提供真正的 SVG 矢量主稿和 PNG 预览。SVG 必须可解析、带 `viewBox`、含路径/几何元素且不含 `<image>` 或 `data:image`；先回渲染 SVG 检查，再交付。

## 来源与版权说明

本仓库瓦当典例的原器物照片和带尺寸人工手绘图由用户提供，出处线索为：[微信公众平台文章（用户提供链接）](https://mp.weixin.qq.com/s/A89_89I7ZpqnMmI08Rsf6g)。当前环境无法独立读取该页面的标题、作者及发布时间，因此不擅自补写元数据；以上链接作为出处标识。

相关案例仅用于考古绘图方法学习、技术验证和 skill 案例展示，不代表原文或原权利人授权。本仓库不主张原始照片、文章文字、器物资料及相关图像的著作权、署名权或其他权利。若您认为相关内容涉及侵权、署名不完整、链接失效或不宜公开，请联系开发者/仓库维护者，可通过本仓库提交 Issue；我们将及时核查，并按要求补充署名、修改或删除相关内容。

## 使用提示

把本目录作为 Codex skill 安装到 `$CODEX_HOME/skills/archaeological-artifact-drawing`，调用时使用：

```text
$archaeological-artifact-drawing
```

本仓库仅在用户明确要求且保留出处的对照案例中纳入必要的原器物图和人工/原报告线图；其他用户上传的原始照片不包含。案例成品同时提供 SVG 矢量主稿和 PNG 预览，用于展示方法和复核思路，不能替代对原器物的现场测量与人工审图。

## 许可与边界

本仓库暂不附带统一开源许可证。公开案例中的尺寸、纹饰判断和图面表达，应在正式发表、文物档案或报告使用前，由具备实测条件的绘图人员和文保/考古专业人员复核。
