
API 网关是企业应用的关键基础组件和流量入口，**目前绝大部分 API 网关市场份额都被几大公有云厂商占据**（AWS API Gateway, Google Apigee, 阿里云 API 网关等）。但是公有云厂商的 API 网关不符合 CNCF 的云原生理念，如果你用了阿里云的 API 网关，你就会被被它锁定了，因为网关是流量的入口，你没有办法分发到其它云厂商上。CNCF 全景图的 API Gateway 分类下有数十款产品，但并不包含公有云厂商的那些。

![](/static/s1/4/api-gateway.png)

上图中有一半是大厂的产品，比如 3Scale 是 RedHat 的，Akana 是 Perforce 的闭源商业化产品，MuleSoft 是老牌软件厂商，2018 年被 Salesforce 收购。值得注意的是，来自中国的有四款产品，分别是（按字母序）:

- [Apioak](http://apioak.com/) - 国内的开源项目，背后似乎并没有商业化公司。
- [Apache APISIX](https://apisix.apache.org/) - 国内初创公司支流科技捐赠给 Apache 的产品。
- [Easegress](https://megaease.com/zh/easegress/) - 国内知名技术 KOL 左耳朵耗子陈皓的创业公司主打产品。
- [Sentinel](https://github.com/alibaba/Sentinel) - 阿里云开源的云原生 API Gateway 组件。

近几年来，国内在开源社区的影响力越来越显著，其中 Apache APISIX 其背后的公司支流科技便是其中之一。上图中的 **Kong 则是海外另一家独角兽公司，支流科技和 Kong 两者有很多相似之处，他们在云原生网关赛道彼此博弈，算得上是一场国内与海外的较量。**

首先简单介绍一下这两家公司：
## Kong

[Kong](https://konghq.com/) 的前身是 2010 年成立于意大利的 Mashape，2015 年发布了 Kong 网关这款产品，后来 2017 年转型成现在的 Kong Inc，地点美国加州。算是一家以开源 API 网关产品起家，后续扩展到 Service Mesh，API 工具等产品的 To B SaaS 软件公司。最新一轮融资是 2021 年 2 月份，1 亿美金 D 轮，估值 14 亿美金，投资方包括高盛、A16Z 等知名机构。其主要产品有：

- [Kong Gateway](https://konghq.com/kong/) - Kong 的 API 网关产品，既是发家之作，也是主打产品；
- [Kuma](https://kuma.io/) - Kong 捐赠给 CNCF 的 Service Mesh 项目；
- [Kong Mesh](https://konghq.com/kong-mesh/) - Kong 基于 Kuma 的商业版 Service Mesh 产品；
- [Kong Konnect](https://konghq.com/kong-konnect/) - 连接 Kong 旗下 Gateway，Mesh 和 Insomnia 的聚合性产品；
- [Insomnia](https://insomnia.rest/) - Kong 于 2019 年从一位独立开发者那里[收购](https://konghq.com/blog/kong-acquires-insomnia/)的开源 API 调式、测试产品，类似于 Postman。

  > 笔者于 2017 年在 IndieHackers 上和 Insomnia 的作者有过关于他的产品名字的交流。作者回复 Insomnia 的产品名是一个双关语。Insomnia 是失眠的意思，而失眠需要休息 (rest)，而 Insomnia 就是一款 REST API 调试工具，域名也是 [https://insomnia.rest](https://insomnia.rest).
  >
  > ![](/static/s1/4/insomnia.png)

## 支流科技

[支流科技](https://www.apiseven.com/)是一家于 2019 年 4 月在深圳成立的开源商业化公司，他们的开源产品名叫 APISIX。支流科技获得真格基金、顺为资本、经纬中国等知名机构的投资，最新一轮为 2021 年 6 月经纬中国的数百万美元 A+ 轮融资。目前他们的主要产品有：

- [Apache APISIX](https://apisix.apache.org/) - 支流科技捐赠给 Apache 的开源 API 网关项目。APISIX 于 2019 年 6 月份开源，7 月份加入到 CNCF 全景图，10 月份进入 Apache 孵化器。2020 年 Apache APISIX 毕业，成为中国最快毕业的 Apache 顶级项目。
- [apisix-ingress-controller](https://github.com/apache/apisix-ingress-controller) - 基于 Apache APISIX 的 Kubernetes Ingress 控制面组件，也捐赠给了 Apache。
- [apisix-mesh-agent](https://github.com/api7/apisix-mesh-agent) - 基于 Apache APISIX 的 Service Mesh 产品，目前是支流科技自己的产品，并未捐给 Apache。

> 很有意思的是支流科技的产品叫 APISIX，而他们公司英文名叫 Apiseven，域名是 [apiseven.com](http://apiseven.com)。

## 对比

![](/static/s1/4/vs-lite.png)

**Kong 和支流科技有很多相似的地方，在这场市场较量中也体现着中美两种开源商业化公司的差异。**

**相似点：**

- Kong Gateway 和 Apache APISIX 同样是基于 Nginx/OpenResty + Lua 的方案。支流科技创始人说是看到 Kong 的方案性能不够好，于是自己重新基于 OpenResty 自研的 APISIX；
- 两家公司都从 API Gateway 扩展到 Service Mesh 等产品；
- 两家公司都给知名开源孵化器捐赠了自己的项目；
- 两家公司都采用类似的开源版免费，企业版付费的商业化策略；

**差异点：**

- Kong 从成立之初就面向全球市场，而支流科技目前绝大多数客户都是中国企业，相对于 Kong 来说全球市场经验是短板。
- Kong 是典型的欧美 To B 公司，品牌打造、市场策略、产品并购与融资等方面都比较成熟。支流科技成立虽然晚两年，但这方面综合能力差距远远不止两年。

很高兴看到中国诞生了支流科技这样的公司，虽然比 Kong 发力要晚，但相对于 Kong 的产品来说，支流科技 APISIX 的性能、社区活跃度、贡献者人数并不亚于 Kong。Apache APISIX 代表着中国开源项目的质量，但企业级 SaaS 方面的经验我们确实还有很多需要向欧美学习。我们也期待支流科技未来越来越好，同时也期待更多的中国软件产品走向世界。