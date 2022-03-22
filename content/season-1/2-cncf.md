有一张让每个人都眼花缭乱的图，它包含上千张卡片，总市值 16.7 万亿美金，总融资超过规模 273 亿美金；它是人类软件领域的智慧结晶，它代表未来软件技术的新一代潮流，它承担着对抗技术熵增的艰难重任。它就是 **CNCF 全景图** (Landscape)：[https://landscape.cncf.io/](https://landscape.cncf.io/)

![](/static/s1/2/landscape.png)

CNCF (Cloud Native Computing Foundation) 这个词大家都有所耳闻，Cloud Native (云原生) 的概念在国内外也如火如荼。这家成立于 2015 年的非盈利基金会的愿景是什么？这一期我们来简单探讨一下。

CNCF 的官方章程 (charter) 写的是：**The Foundation’s mission is to make cloud native computing ubiquitous...** 那云原生 (Cloud Native) 具体是指什么？官方给了一个[定义](https://www.cncf.io/about/who-we-are/)： 

> Cloud native technologies empower organizations to build and run scalable applications in modern, dynamic environments such as public, private, and hybrid clouds. Containers, service meshes, microservices, immutable infrastructure, and declarative APIs exemplify this approach.

为了让日益复杂的现代化软件能够更加流畅的在云上构建、云上部署、云上运行的一系列技术都算云原生技术。而这里所指的云不特指公有云、私有云或混合云，也不特指公有云中哪朵云。因为云原生的另一大理念就是避免厂商锁定：**Vendor-neutral** (厂商中立) 。你部署在 AWS 上的应用应该能无缝或者花很小代价能够迁移至其他使用云原生技术的平台。

目前 CNCF 旗下的众多项目中，有 16 个已毕业 (Graduated)，26 个孵化中 (Incubating)，69 个处在沙盒阶段 (Sandbox)，在对大部分项目有个基本了解之后，我觉得可以把 CNCF 的愿景概括为两个词：**技术变革**与**对抗熵增**。

## 技术变革

过去 20 多年，Apache 基金会的项目在 Java、大数据等领域影响深远，推动着当时的技术变革。从 CNCF 的第一个项目 Kubernetes 开始，CNCF 似乎就在引领着新的技术领域的革新之路。

- [Kubernetes](https://kubernetes.io/) - 在与 Docker Swarm，Apache Mesos 的竞争中脱颖而出，成为容器编排调度的事实标准
- [Envoy](https://www.envoyproxy.io/) - Service Mesh 的标配代理；
- [Jeager](http://jaegertracing.io/) - 分布式追踪的后端存储标准；
- [Prometheus](https://prometheus.io/) - 时序数据监控报警必备组件；

CNCF 的很多项目几乎都是各大云厂商纷纷采用的技术，同时也有源源不断的厂商给 CNCF 捐赠新的项目。CNCF 这一套成熟的孵化机制让他能够推动技术革新，在新技术领域 (WebAssembly，eBPF) 也不会落后，或许关于 CNCF  的下一轮的技术变革也在悄悄的发生着。

## 对抗熵增

事物无序程度的度量被称为熵，而熵增（事物无序程度的增加）是宇宙客观存在的规律。软件技术在不断进化变革的同时，不可避免的也会发生熵增。**这种熵增会体现在很多方面，比如技术复杂度变高、技术规范程度变低、软件间可交互性变难。** CNCF 不仅有引领新的技术变革的产品（Kubernetes, Prometeus)，同样也在孵化一批对抗熵增的项目，那就是这一系列的 **Specification（技术规范）**。 

![](/static/s1/2/specs.png)

- [OpenTelemetry](https://opentelemetry.io/) 制定了软件可观测性 (Observability) 的规范；
- [CloudEvent](https://cloudevents.io/) 制定了跨云、跨系统、跨平台之间的事件定义与通信的规范；
- [Service Mesh Interface (SMI)](https://smi-spec.io/) 制定了 Kubernetes 上的 Service Mesh 的规范；
- [The Update Framework (TUF)](https://theupdateframework.com/) 制定了软件安全高效更新的规范；
- [Open Policy Agent (OPA)](https://www.openpolicyagent.org/) 制定了通用的策略引擎规范；
- [OpenGitOps](https://opengitops.dev/) 制定了开放式的 GitOps 规范；
- [Container Network Interface (CNI)](https://www.cni.dev/) 制定了通用的容器网络规范；

当然除了上面的一些规范之外，CNCF 下面还有其他的规范类项目（比如 [SPIFFE](https://spiffe.io/)，[SMP](https://smp-spec.io/) 等等），这里不再一一例举。

想象一下如果没有这些规范，各大云厂商各行其道，只要你使用他们的云产品，你就会被牢牢的锁定在他的平台，厂商中立这个概念只会是一句空话。熵增是一种无法避免的客观事实，我们只能力所能及减缓这种熵增，而规范的确立是人类对抗熵增的必经之路，CNCF 这一系列项目在不遗余力地往这个方向努力践行着。

本期主要探讨 CNCF 的全景图和他的愿景，它是否代表未来 To-D 创业的风向标？这里面还能挖掘多少 To-D 的创业机会？ 观察室后期分享的 To-D 创业公司或多或少都会与这张全景图有关系。

敬请期待！👏👏