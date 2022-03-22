
我们之前曾多次提到历史上竞争激烈的容器编排之战 (The Container Orchestration Wars)，而 Kubernetes 最有力的竞争者 Mesos 以及其背后的公司当时也算是风光无限，不仅是资本的宠儿，也是被众人看好的明日之星。好景不长，短短三年便改天换地，胜者 Kubernetes 自不必说，Docker 虽败，但开发者依然离不开他。Fleet 背后的 CoreOS，Cattle 背后的 Rancher 也都一直不断创新，备受瞩目。唯独 Mesos 似乎很惨，是早已沉寂，被人淡忘？还是已低调转型，等待厚积薄发？也不知道还有多少人会关心：之前 Mesos 背后的公司是谁？如今尚且安好？

## Mesos 简史

![](/static/s1/8/mesos.png)

### 出生名门

Mesos 最初是加州伯克利大学 RAD 实验室 2009 年开始的一个学术研究项目，当时项目的主要负责人是 Mesos [这篇论文](https://people.eecs.berkeley.edu/~alig/papers/mesos.pdf)的第一作者 Benjamin Hindman，他是 RAD 实验室的一名博士研究生。**加州伯克利大学是现代计算机技术领域的一朵皇冠，里面诞生了非常多至今影响深远的技术，从 RISC 指令集、RAID（冗余磁盘阵列），到 PostgreSQL、Log-Structure Filesystem，再到 Spark 和 Ray，甚至连 eBPF 里面的 B 都是 Berkeley。** 毫无疑问，Mesos 就是这样一个出生名门的项目。

此时的 Twitter 早已进入高速发展的阶段，与之伴随的是 Twitter 频繁宕机的「失败鲸」时光。2010 年，正在 Twitter 苦不堪言的时候，他们看到了 Mesos 这个项目，随后马上应用到了 Twitter，成为 Twitter 自定义 PaaS 的实现基础，管理着 Twitter 超过 30 万台服务器上的应用部署。Benjamin Hindman 当时也加入了 Twitter，负责开发和部署 Mesos。Twitter 的这套基于 Mesos 的 PaaS 解决方案就是后来的 [Apache Aurora](https://aurora.apache.org/)。

![](/static/s1/8/fall-whale.png)

> Twitter 2008 ~ 2013 年宕机时的页面，被海外网友称为「失败鲸」。

### Mesosphere 成立

2013 年，Benjamin Hindman 离开 Twitter 成立了一个名为 [Mesosphere](https://web.archive.org/web/20140903015326/http://mesosphere.com/) 的公司，专注于打造生产级商业化 Mesos 平台。**Mesosphere 正式成为 Mesos 背后的公司，在后期的 Mesos 开发，商业化运营，与 Kubernetes 的竞争中几乎都由 Mesosphere 在主导和支撑。**

> Mesos 一词来源于希腊语，是 middle (中间) 的意思，英语里面甚至有一个 *meso-* 的词根。Sphere 则表示某个领域或范围，而 Mesosphere 既指地球大气层的中流层（介于平流层和热流层中间），也可以表示 Mesos 这个领域。
>
> 国内青云也有一个专注于 Kubernetes 技术的团队，他们的产品名为 [Kubesphere](https://kubesphere.io/)，估计也是受到 Mesosphere 的启发。

![](/static/s1/8/mesosphere.png)

当时的 Mesosphere 除了 Apache Mesos 外，还有两款主要产品：

- **[DC/OS](https://dcos.io/)- 一套基于 Mesos 的数据中心操作系统，也是 Mesosphere 最主要的商业化产品。**

  > DC/OS 最初是 Data Center Operating System 的缩写，现在已经被改为 Distributed Cloud Operating System 的缩写。前期这款产品只支持 Mesos 和 Docker，后来随着 Kubernetes 的崛起，也支持了 Kubernetes。

- [Marathon](http://mesosphere.github.io/marathon/) - Mesos 底层的容器编排框架，也正是 Mesos 与 Kubernetes 抗衡的核心组件。

### 备受追捧

Mesosphere 成立后就备受资本的追捧，自 2014 年 6 月至 2018 年 5 月共完成 A 到 D 轮四轮融资，金额分别为 1050 万美元、3600 万美元、7350 万美元和 1.25 亿美元，投资方包括 A16Z、Fuel Capital、微软等。Mesosphere 最高估值是 D 轮之后达到 7.75 亿美金。

Mesos 在 Twitter 的成功应用后，也吸引了全世界其他知名公司的采纳，比如 Airbnb、eBay 和 Netflix 等等，甚至 2015 年 Apple 的 Siri 就是运行在 Mesos 上，Mesos 也因此曾经火极一时。至于微软，他不仅投资了 Mesosphere，还让他的 Azure 平台率先[支持](https://www.zdnet.com/article/new-azure-container-service-to-bring-together-mesos-docker-and-azure-cloud/)了 Mesos。

### 黯然退场

辉煌是短暂的，Kubernetes 来势汹汹，Mesos 却节节败退。起初 Mesosphere 的一部分人还认为这两款编排工具完全可以并行存在，但残酷的现实把他们的这个美好梦想击得粉碎。一山不容二虎，容器编排领域似乎也容不下我 Mesos 了。心有不甘，我好想再做一次最后的挣扎，但是似乎已经于事无补。

- 2019 年 8 月 5 号，Mesosphere [宣布改名](https://d2iq.com/blog/mesosphere-is-now-d2iq)为 D2iQ，开启新的重生之旅。
- 2020 年 4 月 27 号，外媒报道 Google [计划收购](https://www.axios.com/google-talks-to-acquire-enterprise-software-startup-d2iq-mesosphere-a0d428bf-2382-4ec6-8941-9e580e36086e.html) D2iQ，报价是 2.5 亿美金，比最高时的 7.75 亿跌了近 7 成，但最后的结果好像是无疾而终。
- 2021 年 4 月 21 号，Apache 成员投票通过计划将 Mesos 移入 [Attic](https://attic.apache.org/) (阁楼)，正式结束这个项目的生命。不过两天之后这个决定被撤回，Mesos 依然继续残喘存活。

### 复盘

Mesos 可能是计算机历史上最短命的技术栈，Benjamin Hindman 在 HackerNews [关于 Mesos 被移入 Attic 的帖子](https://news.ycombinator.com/item?id=26713082)上做了复盘：**“Mesos 的失败是种必然”**。

> - **Kubernetes 拥有后发优势，承载着谷歌十多年来在构建此类系统方面积累起的丰富经验与知识。** Mesos 则源自技术研究，随后虽然得到了 Twitter 的实际应用，但负责项目的工程师们（包括我本人）并不具备构建集群管理系统的经验。我们在探索当中学到了很多，回头来看，如果能有第二次机会、我们肯定会认真调整设计思路。
>
> - **Mesos 这个项目做得有点“小气”，导致社区变得支离破碎。** 为了正常使用，新用户们不得不付出大量重复劳动。很明显，大多数用户只想运行服务、作业与 cron 作业，但 Mesos 的设计思路并不是这样。大家必须得从一系列生态系统调度程序（包括 Aurora、Marathon、Chronos 以及 Singularity 等）中进行选择，或者自主构建某些内容。
>
> - **Mesosphere 是一家靠风险投资支持的初创企业**，后来则由 Twitter 接手赞助项目发展。正因为如此，**我们必须找到一种能够产生收益的商业模式，这就导致我们与用户乃至其他供应商之间产生了紧张关系、甚至是严重的不信任感。** 相反，谷歌 / k8s 不要求任何直接产出，反而可以不断投入大量资金与丰富的人才资源，由此带来的技术成果单靠增强谷歌自己的云计算业务就足以值回票价。

Mesos 另外一个 PMC 和提交者也补充道：

> Kubernetes 成功的另一个原因，可能在于 golang  的生态。在 Mesos 中，由于采用独特的线程模型，我们耗费了大量精力在 C++ 中构建基础 HTTP 层。**如果能够重新选择，真希望能把这些时间花在开发点真实有用的功能上。**

## D2iQ

![](/static/s1/8/d2iq.png)

Mesos “死了”，但 Mesosphere 这家公司还得继续活着。**没有成王败寇，新生的 D2iQ 选择拥抱了它曾经的死敌 Kubernetes，往事如烟，重新来过！**

> 新名字 D2iQ 初看起来非常奇怪，但把它拆开后就可以发现里面的用意：**D2iQ 里面的 D2 是指 Day 2，iQ 就是大家平时所指的那个 IQ (智商) 。**
>
> 软件开发生命周期可以划分为 Day 0，Day 1 和 Day 2：
>
> ![](/static/s1/8/day2.png)
>
> - Day 0 通常是指初期的需求明确，架构设计阶段；
>
> - Day 1 通常是指软件安装、部署、配置阶段，Day 1 之后代表软件正式上线运行；
>
> - Day 2 通常是指软件上线后的运维阶段，也是整个生命周期里面的非常重要、持续时间最长的一环，从产品上线到最终结束都算是 Day 2。
>
> **而 D2iQ 新的定位是给企业的 Day 2 环节提供更好、更智能的解决方案。**

转型后的 D2iQ 主要有如下几款产品：

- [Kommander](https://d2iq.com/products/kommander) - 类似于 Rancher 的 Kubernetes 多集群管理平台；
- [Konvoy](https://d2iq.com/products/konvoy) - D2iQ 自己的 Kubernetes 发行版；
- [KUDO](https://kudo.dev/) (The Kubernetes Universal Declarative Operator) - 【CNCF 沙盒项目】一个只需要用 YAML 就可以开发 Kubernetes Operator 的项目，对标之前提到过的 RedHat 的 Operator Framework，于 2020 年 7 月[捐赠](https://d2iq.com/blog/kudo-accepted-as-a-cncf-sandbox-project)给了 CNCF。
- [Kaptain](https://d2iq.com/products/kaptain) -  基于 Kubernetes 和 Kubeflow 的企业级端到端机器学习平台，[前身](https://d2iq.com/blog/kudo-for-kubeflow-the-enterprise-machine-learning-platform)是 KUDO for Kubflow 这个项目；
- [DKP](https://d2iq.com/kubernetes-platform) (D2iQ Kubernetes Platform) - 将上面的产品打包到一起售卖的 Kubernetes 综合解决方案；

![](/static/s1/8/dkp.png)

**技术迭代如此之快，市场竞争愈加激烈，没有人能预料到下一个 Kubernetes 会什么时候崛起，唯有勇敢、坚定，跌倒了再重新爬起，像 D2iQ 一样，既往不恋，纵情向前！**