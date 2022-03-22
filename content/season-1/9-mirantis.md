
2019 年 11 月，Docker 公司出售了自己的 Docker Enterprise 业务和整个 300 人的团队，出人意料的是购买方是一家似乎名不见经传的公司 Mirantis。相信绝大多数人（包括笔者本人）之前并未听闻过Mirantis，这家公司是个什么来路？为什么他能收购 Docker 的企业业务？收购之后这家公司目前发展得如何？

<p>
  <img class="mx-auto" style="height: 280px;" src="/static/s1/9/mirantis-light.png"/>
</p>

### 外包公司能有什么出息？

2010 年 NASA 和 Rackspace [联合发布](https://web.archive.org/web/20171026111206/https://www.openstack.org/blog/2010/07/introducing-openstack/)了私有云解决方案 OpenStack，很快便吸引了一家外包公司的注意，该公司在 2011 年就开始给 OpenStack 做贡献。2012 年，OpenStack 发布才两年多，NASA 就抛弃了 OpenStack 选择[拥抱公有云 AWS](https://www.wired.com/2012/06/nasa-web-services-openstack/)。而这家外包公司也在这一年华丽转型全面投入 OpenStack，变成了一家纯 OpenStack 公司。这家外包公司就是 Mirantis，它于 1999 年在俄罗斯成立（后来把总部定在了美国加州）。

> NASA 抛弃 OpenStack  转而采用 AWS 核心原因是：**NASA 是政府部门，不是商业机构，采用亚马逊的云计算，NASA 每年可以节省 100 万美元的成本。**

关于 Mirantis 转型 OpenStack 之前的外包经历 Mirantis 自己好像从来不愿提起，网上几乎也没有什么资料。不过互联网还是有记忆的，2013 年一家专注于俄罗斯和东欧市场的科技媒体刚好报道了 Mirantis A 轮融资的消息，标题就是"[Russian former outsourcing Mirantis Announces $10 Million Series A Round](http://web.archive.org/web/20131211151032/http://goaleurope.com/2013/06/24/russian-former-outsourcing-mirantis-announces-10-million-series-a-round/)"。

我们大概都有一个刻板印象，**外包公司能有什么大出息？这句话可能对绝大多数外包公司都适用，但是对 Mirantis 却不适用。在转型 OpenStack 公司之后，Mirantis 融资顺畅，一路高歌，在随后的几年里成为了 OpenStack 领域数一数二的公司。**

### OpenStack 的时代

2012 年 OpenStack 基金会[成立](https://www.businesswire.com/news/home/20120919005997/en/OpenStack-Launches-Independent-Foundation-Begins-Work-Protecting)，OpenStack 的黄金时代到来。而 Mirantis 也成为了这个基金会的创始成员之一，Mirantis 的创始人也当选了基金会的董事会成员。从 2013 年到 2015 年，Mirantis 分别完成了 2000 万美金的 A 轮和 2 亿美金的 B 轮融资，投资方不仅有 Intel、RedHat 和爱立信，还有一家来自中国的[华山资本](https://www.westsummitcap.com/zh/)。

> Mirantis 在[官方博客](http://web.archive.org/web/20130916010432/http://www.mirantis.com/company/press-release/mirantis-receives-10-million-from-intel-capital-westsummit-capital-and-dell-ventures-to-accelerate-its-openstack-game/)中也提到之所以接受华山资本的投资是**因为[openstack.org](http://OpenStack.org)访问量最大的国家是中国， 中国拥有世界上最大的云部署和 OpenStack 需求**，华山资本可以帮助 Mirantis 在中国更好的拓展市场和客户。

在资本的支持下，**Mirantis 发行了自己的商业化 OpenStack 发行版，也成为了全球顶尖的 OpenStack 服务提供商。在 OpenStack 贡献方面，当时的 Mirantis 很长时间一直都能排前三。**

![](/static/s1/9/openstack-rank.png)

> OpenStack Kilo 版本按 commit 数排名，Mirantis 排名第三 (扇图中最大的绿色部分为其他公司的总和)。数据来源于 Mirantis 维护的网站：[https://www.stackalytics.com](https://www.stackalytics.com)
>
> OpenStack 的版本命名和 Android 类似，从字母 A 开始命名，每一个版本换一个字母，截止到目前最新的版本是 Wallaby。

### OpenStack 的没落

OpenStack 的黄金时代才持续几年便开始逐渐没落。其中有很多原因：

- **随着 OpenStack 不断发展，组件越来越多，整个项目越来越复杂。** 甚至到后期很多组件都成为了缺少维护的状态。
 
 > OpenStack 最高的时候有 40 多个组件，现在最新版已经缩减到了 [30 个左右](https://www.openstack.org/software/project-navigator/openstack-components)。

- OpenStack 在公有云上无法和 AWS、Azure 等厂商的自有技术抗衡，在私有云上也无法威胁到 VMware。
- **Kubernetes 的崛起给 OpenStack 着实带来了很大挑战和冲击。**

![](/static/s1/9/openstack-maillist.png)

> OpenStack邮件列表数量统计图，来源：https://openstack.markmail.org。

很快 OpenStack 颓势渐显：

- 2015 年，Rackspace 宣布将客户的业务从 OpenStack 迁移到 AWS 上；
- 2015 年 10 月，惠普宣布关闭基于 OpenStack 的公有云服务 Helion；
- 2016 年 2 月，思科宣布将在 2018 年 3 月停止基于 OpenStack 的公共云服务 Intercloud；
- **2016 年 11 月，OpenStack 核心成员 Mirantis，裁掉了约 100 名 OpenStack 开发者；**
- 2017 年 4 月，英特尔决定不再投资 OpenStack 创新中心。

> 后来，Open Stack 基金会改名 [Open Infrastructure 基金会](https://openinfra.dev/)，不再专注于 OpenStack，也孵化了像 [Kata Container](https://katacontainers.io/) 这样的明星项目。

### 高光时刻

Mirantis 在那次裁员之后依然没有放弃老本行 OpenStack 的业务，但是他把重心调整到了 Kubernetes 上，不再是一家纯 OpenStack 公司了。

- 2016 年 12 月，就像之前一直搞 OpenStack 的培训一样，Mirantis 又开始搞起了 Kubernetes 和 Docker 的[培训和认证](https://www.networkworld.com/article/3145402/mirantis-moves-deeper-into-the-container-world-launches-certification.html)。
- 2017 年 4 月，Mirantis [发布](https://www.zdnet.com/article/mirantis-enters-the-kubernetes-game-and-ups-its-openstack-play/)了一款 OpenStack 和 Kubernetes 的结合产品：Mirantis Cloud Platform (MCP)，这款产品至今依然存在，只是改名叫了 [Mirantis OpenStack for Kubernetes](https://www.mirantis.com/software/mirantis-openstack-for-kubernetes/)。

  ![](/static/s1/9/mcp.png)

  > MCP 里面包含两款子产品: 
  > - DriveTraint - 提供 CI / CD 功能；
  > - StackLight - 提供日志、监控报警等功能；

- 2017 年 9 月，Mirantis 继续在 MCP 的基础上[发布了](https://www.mirantis.com/company/press-center/company-news/mirantis-launches-multi-cloud-caas-with-aws-support/) Containers-as-a-Service (CaaS) 产品，后来应该演变成了现在的 Mirantis Kubernetes Engine。

- 2018 至 2019 年，Mirantis 依然持续布局发布了其他的产品，这里不再赘述。

**到了 2019 年底，Mirantis 终于迎来了他的高光时刻：收购 Docker 的 Enterprise 业务。这部分业务几乎在 Docker 公司所有业务中占比 90%，其他还包括所有相关的知识产权、约 400 名 Docker 员工中的 300 名、750 名企业客户以及所有企业合作伙伴关系。**

![](/static/s1/9/docker-enterprise.png)

> 曾经 Docker [公司官网](https://web.archive.org/web/20191106112336/https://www.docker.com/)的 Docker Enterprise 和 Docker Enterprise Solutions 板块。

收购的这些业务中具体包含如下这些产品：

- Docker Enteripse Edition (Docker EE) - 现在变成了 [Mirantis Container Cloud](https://www.mirantis.com/software/mirantis-container-cloud/)；
- [Docker Container Engine](https://docs.docker.com/engine/) - 现在变成了 [Mirantis Container Runtime](https://www.mirantis.com/software/container-runtime/)；
- Docker Trusted Registry - 现在变成了 [Mirantis Secure Registry](https://www.mirantis.com/software/mirantis-secure-registry/)；
- Docker Kubernetes Service - 现在变成了 [Mirantis Kubernetes Engine](https://www.mirantis.com/software/mirantis-kubernetes-engine/)，Mirantis 自己的 K8S 发行版；
- 其他：Universal Control Plane，Docker Edge Technology。

两年过去了，如今的 Mirantis 发展的怎样呢？前不久有**外媒[报道](https://techcrunch.com/2022/02/09/mirantis-on-run-rate-over-100m-two-years-after-buying-docker-enterprise-assets/)，在收购 Docker 企业业务两年后，Mirantis 年营收达到了一亿美金，而 Docker 在去年的 ARR（年度经常性收入）也[达到了](https://techcrunch.com/2022/02/01/docker-makes-comeback-reaching-over-50m-in-arr/) 5000 万美金。**

> 这里的一亿美金是年营收 (Annual Run Rate)，并非 ARR。

### 开创未来

可以说 Mirantis 收购 Docker 企业业务这笔交易是相当成功的，现在的 Mirantis 已经不是当年 OpenStack 时代的 Mirantis 了，更不是十年前的那家外包公司了。**如今的 Mirantis 是一个办公地点包括美国、加拿大、欧洲、中国、印度、日本等十几个国家和城市的跨国公司，也是一家业务从 OpenStack，到 Kubernetes、Docker，再到 DevOps、Data Center 等覆盖面非常广的公司。** 这几年除了继续经营传统的 OpenStack 和 Docker 相关业务外，Mirantis 持续收购和开辟了新的产品线和业务：

- [Lens](https://k8slens.dev/) - 目前业内比较受欢迎的一款 Kubernetes IDE 产品，2020 年 8 月从一家芬兰公司那收购；

  > Lens 的桌面版 IDE 是开源免费的，但是它提供的团队协作功能 ([Lens Space](https://k8slens.dev/spaces.html)) 则需要订阅付费。

  ![](/static/s1/9/lens.png)

- [DevOpsCare](https://www.mirantis.com/software/lens/devopscare/) - Lens 团队被收购后和 Mirantis 一起搞的适用于任何 Kubernetes 环境的 CI / CD 产品。

  > 这款产品 2021 年 12 月才发布，目前比较新。

- [K0S](https://k0sproject.io/) - Rancher 之前搞了一个轻量级的 K3S，Mirantis 更进一步直接搞了一个 K0S。
- [Mirantis Flow](https://www.mirantis.com/software/mirantis-flow/) - 一款 Data Center as a Service (数据中心即服务) 产品。

  > 这是一款很有意思的产品，Mirantis 刚开始以卖私有云软件起家，客户购买 OpenStack 软件之后依然需要有专门的 IT 团队使用 OpenStack 搭建自己的私有云数据中心。但现在 Mirantis 开始直接卖服务了，客户购买 Mirantis Flow 的服务之后，Mirantis 直接联合硬件厂商完整的把数据中心建好之后再交付给你。这就是这几年开始出现的 [DCaaS](https://venturebeat.com/2021/10/10/the-emergence-of-datacenter-as-a-service/) 的概念。
  >
  > Mirantis Flow 的价格为每月 15000 美元，其中包含 Mirantis 软件套件中所有内容和 1000 core/vCPU licenses，支持初始 20 个虚拟机迁移，以及 24 × 7 小时支持。

Mirantis 从外包起家，到及时拥抱 OpenStack，到迅速转型 Kubernetes，每一步似乎都踩得恰到好处。如今 Mirantis 不断推陈出新，影响力越来越大，相信他会不断开创他自己的美好未来！

> 就在笔者调研 Mirantis 的期间，俄罗斯 2 月 24 号从乌克兰第二大城市 Kharkiv (哈尔科夫) 对乌克兰发动军事行动，俄乌局势急转直下。而刚好 Mirantis 的创始人是俄罗斯人，他们在 Kharkiv 有办公室，而且一直在招人。我们只能祝愿一切安好！
>
> ![](/static/s1/9/kharkiv.png)
>
> 后续：在这篇文章发表当天，Mirantis 在官方博客对乌克兰危机[做出了回应](https://www.mirantis.com/blog/mirantis-response-to-ukraine-crisis/)。Mirantis 说乌克兰的 86 名员工目前都安全；因为俄罗斯受到各方面制裁，俄罗斯团队也在紧急制定措施应对制裁，减少对客户的影响。