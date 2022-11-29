2013、2014 年开始，国内外开始流行一个 Ruby 编写的开源产品 [Vagrant](https://www.vagrantup.com/)，它是一个主要用来解决本地（特别是多人协作）开发环境配置繁琐、不一致等痛点的项目，深受很多工程师喜欢。难以预测的是， 2016 年 Docker 的大范围普及，让这个产品逐渐没落。更难预测的是，这个 2010 年开发 Vagrant 的作者，多年后成为了一家市值 150 亿美金的 To B SaaS 公司的创始人。这家公司就是我们这一期的主角 —— HashiCorp。上期我们介绍了 CNCF 全景图，而 HashiCorp 有五款产品就在全景图中。

![](/static/s1/3/thrending.png)

> 上图为 Vagrant 关键字的 Google Trends 图，纵轴代表相对顶峰搜索频次的百分比，而非绝对数字；
>
> Trends 链接：[https://trends.google.com/trends/explore?date=2010-12-04%202022-01-04&q=vagrant](https://trends.google.com/trends/explore?date=2010-12-04%202022-01-04&q=vagrant)

## 多云时代

先来看一条充满戏剧性的时间线：

- 2021 年 12 月 7 日，AWS 发生了它当月第一次重大线上宕机事故；
- 第三天（2021 年 12 月 9 日），一家多云软件提供商和倡导者 HashiCorp 在 Nasdaq [上市](https://www.sec.gov/Archives/edgar/data/0001720671/000119312521352796/d205906d424b4.htm)，市值 150 亿美金；

```urlpreview
https://www.hashicorp.com/blog/a-new-chapter-for-hashicorp
```

- 2021 年 12 月 15 日、2021 年 12 月 23 日，AWS 再次发生当月第二、三次线上宕机事故；

当月国外[众多媒体](https://www.cnbc.com/2021/12/12/aws-outage-and-hashicorp-ipo-point-to-a-multicloud-future.html)趁此机会都在利用这条时间线来大肆宣传多云 (Multi-Cloud) 时代，似乎意味着多云是未来不可避免的趋势？确实如此，2021 年 HashiCorp 发布了一份详细的关于云现状的问卷调查报告。

```urlpreview
https://www.hashicorp.com/state-of-the-cloud
```

这篇报告里面有几个重点值得关注：

- **76% 的受访者所在公司已经在使用多云，未来两年这个数字将会扩大到 86%；**
- **Digital transformation (数字化转型), avoid single cloud vendor lock-in (避免云厂商锁定), cost reduction (节省成本) 是企业使用多云的 Top 3 驱动力；**
- **Skills shortage (技能缺乏) 和 security (安全) 分别是企业拥抱多云的最大挑战和阻力；**

HashiCorp 这家公司以及他的产品，毫无疑问是在这场多云趋势中最大的受益者之一。

## 产品

HashiCorp 目前总共有八款主打产品，囊括了从开发 (Packer, Vagrant)、部署 (Terraform)、安全 (Boundary, Vault)、网络 (Consul)、应用 (Nomad, Waypoint)等各个环节。

- [Terraform](https://www.terraform.io/) - AWS CloudFormation 的多云版开源实现，遵循 Infrastrusture as Code 的理念，编写 Terraform 特定语法的 DSL 配置文件即可轻松部署上百家云厂商的服务；
- [Vault](https://www.vaultproject.io/) - 密钥管理、敏感数据管理、Encrypt as a Service （加密即服务）的企业级安全类产品；

**Terraform 和 Vault 是 HashiCorp 最杀手锏的产品，市面上几乎没有同类产品能很好地替代它们。**

-  [Consul](https://www.consul.io/) - 一个服务发现和 Service Mesh 产品，市面上其实有不少替代者。不过这个产品可能是字节跳动工程师最熟悉的 HashiCorp 产品，字节跳动也可能是 HashiCorp Consul 最大的使用者（虽然我们是二次开发）。
- [Packer](https://www.packer.io/) - 遵循 Infrastructure as code 理念的多云自动化镜像构建工具；
- [Nomad](https://www.nomadproject.io/) - 简单灵活的 (容器化和传统非容器化) 应用部署、调度、管理的解决方案，它可以无缝的和  Terraform, Vault, Consul 结合，是一个轻量级的 Kubernetes 替代产品；

  ```urlpreview
  https://developer.hashicorp.com/nomad/docs/nomad-vs-kubernetes
  ```

- [Boundary](https://www.boundaryproject.io/) - 2020 年 10 月份推出的多云远程访问解决方案，很有创新性，目前也没有很好的竞争产品；
- [Waypoint](https://www.waypointproject.io/) - HashiCorp 最新的产品（同2020 年 10 月份）。遵循 Intrasturecture as code 的应用构建、部署、上线一站式工具。这个产品感觉潜力也很大。

![](/static/s1/3/stack.png)

HashiCorp 早些年发布了它的 HashiCorp 之道 ([The Tao of HashiCorp](https://www.hashicorp.com/tao-of-hashicorp))，这些产品无一不践行着这一哲学。HashiCorp 同样是 Go 语言的深度使用者，几乎所有产品都是 Go 语言编写，他们甚至把 Go 语言推崇的 [CSP 并发](https://en.wikipedia.org/wiki/Communicating_sequential_processes)理念也写进了他们的道中。

## 商业模式

HashiCorp 的商业模式也很有代表性，算是开源软件商业化的经典范例。

![](/static/s1/3/product.png)

- **产品全部开源。** 开源是非常好的获客方式，同时也能得到社区检验和快速获取反馈、快速迭代的好途径。
- **Enterprise 版本收费。** 原则是 technical challenges 都在免费的开源层面解决，针对企业或大团队需要的功能才收费。

  > 比如，一般大家会把安全放在 enterprise 版本里面，但是因为 Vault 是一个安全产品，所以“you should not have to pay us to be secure as Vault”。开源版本里面也可以满足非常高的安全要求。但是，是否满足 GDPR，以及各种数据管理法规等等，都不是技术问题，所以放在付费版本里。
  >
  > 对于 Team，原则就是：个人或者小的 team 应该可以永远免费使用。但是，涉及跨团队协作的功能就要收费，因为这也是典型的 organizational challenges.

- **构建社区。** HashiCorp 从创立之初就非常注重开源社区的运营，也收获了非常多的社区粉丝。利用开源形成事实标准，是企业最牢固的隐形护城河。

> 商业模式这部分内容有参考 **M小姐研习录** 的这篇公众号文章，写的非常详细，强烈推荐阅读：

```urlpreview, image:false
https://mp.weixin.qq.com/s/Y2A7-Ui2nzUgodkEbgR6lQ
```

HashiCorp 是 2012 年创立，CNCF 的云原生在 2015 年才提出来，目前 HashiCorp 有五款产品在 CNCF 的全景图中，分别是 Terraform, Vault, Nomad, Consul, Packer，而这五款产品都是 2015 年之前发布的。从创立到上市的九年时间，HashiCorp 顺应了时代的潮流，而时代也成就了 HashiCorp!

![](/static/s1/3/ipo.png)