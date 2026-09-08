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
| [references/wadang-case-8a1.md](references/wadang-case-8a1.md) | 瓦当典例：纹饰、尺寸和成品复核 |
| [assets/examples/wadang-8a1-archaeological-plate-v1.png](assets/examples/wadang-8a1-archaeological-plate-v1.png) | 瓦当规范化绘图成品示例 |

## 典例：瓦当 8a1

该案例把一张正面照片和文字尺寸转成以中心轴、同心结构、四分布局和云纹证据为核心的线图。案例中记录的尺寸包括：当径 16、当心径 6、边轮宽 0.9、边轮厚 1.9、当厚 1.5、纹/缝深 0.6 厘米；正式使用时仍应以原始测量记录复核。

![瓦当考古绘图典例](assets/examples/wadang-8a1-archaeological-plate-v1.png)

这张成品图展示的重点不是“复刻照片质感”，而是：

- 将圆形器物的轮廓、边轮、当心和分区关系说清楚
- 用统一的线条层级提取可确认的云纹与中心网格纹
- 不绘制锈蚀色斑、反光和拍摄背景
- 对低清或残损处保持证据边界，不用程式化纹样替代照片信息

## 来源与版权说明

本仓库瓦当典例的照片及尺寸文字资料出处为：[微信公众平台文章（用户提供链接）](https://mp.weixin.qq.com/s/A89_89I7ZpqnMmI08Rsf6g)。当前环境无法独立读取该页面的标题、作者及发布时间，因此不擅自补写元数据；以上链接作为出处标识。

相关案例仅用于考古绘图方法学习、技术验证和 skill 案例展示，不代表原文或原权利人授权。本仓库不主张原始照片、文章文字、器物资料及相关图像的著作权、署名权或其他权利。若您认为相关内容涉及侵权、署名不完整、链接失效或不宜公开，请联系开发者/仓库维护者，可通过本仓库提交 Issue；我们将及时核查，并按要求补充署名、修改或删除相关内容。

## 使用提示

把本目录作为 Codex skill 安装到 `$CODEX_HOME/skills/archaeological-artifact-drawing`，调用时使用：

```text
$archaeological-artifact-drawing
```

本仓库不包含用户上传的原始照片；案例成品用于展示方法和复核思路，不能替代对原器物的现场测量与人工审图。

## 许可与边界

本仓库暂不附带统一开源许可证。公开案例中的尺寸、纹饰判断和图面表达，应在正式发表、文物档案或报告使用前，由具备实测条件的绘图人员和文保/考古专业人员复核。
