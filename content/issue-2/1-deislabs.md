
微软历史上收购合并过无数的产品、公司和团队，很多产品或公司甚至在被收购前已经是家喻户晓的品牌（比如 LinkedIn，Github，最近的暴雪动视），而我们这一期的主角 Deis Labs 纯粹是微软这个[超长收购清单](https://en.wikipedia.org/wiki/List_of_mergers_and_acquisitions_by_Microsoft)中普通到不能再普通的一项，当你用手指划过这个清单时，你都丝毫不会注意到有一项写着：`Deis, 收购于 2017 年 4 月 10 日`。

![](/static/s2/1/list.png)

> 微软的收购清单

Deis，就是 DeisLabs 的前身，这是一个非常优秀并且充满创造力的团队，也是笔者非常喜欢的团队。今天我们就来分享 DeisLabs 的故事。

## PaaS 与 Deis

我们的故事要先从 PaaS 开始说起。2007 年，[Heroku](https://www.heroku.com/) 成立后开启了 PaaS 的黄金时代。很多人把 Heroku 称为 PaaS “鼻祖”，其实并不准确。比他成立更早的 [Engine Yard](https://www.engineyard.com/) 在 2006 年就开始做类似的事情了，只是 Engine Yard 后来发展比 Heroku 差太多，只能算 PaaS 领域的第二梯队。Engine Yard 几乎是一个没人听过的名字，但他与我们今天的主角 DeisLabs 息息相关。2015 年 4 月 15 日，Engine Yard [收购](https://web.archive.org/web/20170611174913/https://blog.engineyard.com/2015/engine-yard-joins-forces-with-opdemand)了一家名为 OpDemand 的公司，这家公司有一款叫 Deis 的主打产品。Deis 是 OpDemand 受 Heroku 启发，于 2013 年开始开发的 PaaS 产品（那个时候的 Heroku 真的是非常火）。Deis 最早的架构是基于 CoreOS, Fleet 和 Docker，后来被称为 v1 版架构，早已被弃用，不过我们现在依然可以在 Github 上一瞥曾经 Deis v1 的代码 ([https://github.com/deis/deis](https://github.com/deis/deis))。

> 没错，这里又出现了 Fleet，就是 CoreOS 打造的 Fleet。我们曾经在`/s1/coreos`、`/s1/rancher`那两期都提到过它。

OpDemand 在加入 Engine Yard 之后，继续以 Deis 的名义开发维护 Deis 这款产品，他们有自己独立的官网 [https://deis.com](https://web.archive.org/web/20170209220933/https://deis.com/) 。2015 年 12 月 30 号，他们发布了基于 Kubernetes 的 Deis 第二代产品 Deis Workflow。当年的 Deis 确实做的很不错的，影响力甚至慢慢的扩散到了中国，知乎上现在还可以看到当年和 Deis 有关的问题。

<p><img class="mx-auto" style="width: 400px;" src="/static/s2/1/deis-zhihu.png"/></p>

2017 年已经到了 Kubernetes 风起云涌的阶段，公有云领域的后起之秀微软 Azure 也在为自己的容器服务物色合适的公司或团队，慧眼识珠的 Azure 看中了 Deis 这个团队。2017 年 4 月 10 日，在和 Engine Yard 协商之后，Azure 正式把 Deis 这个团队[收入囊中](https://blogs.microsoft.com/blog/2017/04/10/microsoft-acquire-deis-help-companies-innovate-containers/)。Deis 加入 Azure 之后负责 Kubernetes 和容器相关的产品，现在点击 [https://deis.com](https://deis.com) 就会跳转到 Azure Kubernetes Service (AKS) 的产品页面。

> 在被微软收购几个月后，包括 Deis Workflow 在内的 Deis 之前的项目都不再维护更新：[Deis Workflow Final Release](https://web.archive.org/web/20180626034638/https://deis.com/blog/2017/deis-workflow-final-release/)

![](/static/s2/1/deis-legacy.png)

> Deis 被收购前的[官网](https://web.archive.org/web/20170209220933/https://deis.com/)。

让人大跌眼镜的是，就在 Engine Yard 把 Deis 团队卖给微软之后没几天，2017 年 4 月25 号，Engine Yard 宣布被一家叫 [Crossover](https://www.crossover.com) 的猎头公司收购。Engine Yard 在[这篇被收购文章](https://web.archive.org/web/20170606120646/http://blog.engineyard.com/2017/crossover-acquisition)中给出的卖掉 Deis 团队的理由是：Deis 团队做的 Kubernetes 产品让 Engine Yard 无法专注于 Ruby on Rails 的 PaaS 平台。（最初的几个 PaaS 平台包括 Heroku 都是做 Ruby 起家的）这个理由真的让笔者哭笑不得，好一个不忘初心，似乎用“只见树木不见森林”来评价也不为过。多年后来回看 Ruby 和 Kubernetes 的发展趋势，大家马上就能高下立判了。

> 而现在的 Engine Yard 也不是在 Crossover 名下，而是在一个叫 Devgraph 的公司名下，具体是不是 Crossover 转卖给 [Devgraph](https://devgraph.com) 的就不得而知了。

## Deis Labs

被微软收购后，所有 Deis 的成员全部加入 Azure，为了致敬曾经的 Deis 团队，他们把自己在微软的新团队取名 Deis Labs，官网：[https://deislabs.io](https://deislabs.io)。

![](/static/s2/1/deislabs.png)

新的 Deis Labs 主要专注于 Kubernetes 和 WebAssembly 两大领域。微软也给 Deis Labs 提供了一个足够大的平台，激发了 Deis Labs 的无穷创造力。他们在短短几年内除了要顾及 Azure 的容器服务，还推出了很多开源项目。虽然有些项目并没有特别知名，但长远来看很多都是很有意义的项目。在介绍这些项目前，我们不得不先介绍一下 Deis Labs 在老东家 Engine Yard 就推出的项目 [Helm](https://helm.sh/)。

### Helm

![](/static/s2/1/helm.png)

**Helm 是 Deis 团队于 2015 年发布的一个 Kubernetes 的包管理工具，目前是 CNCF 的已毕业项目，也是 Kubernetes 生态里面不可或缺的明星级项目**。Kubernetes 默认需要开发者手动编写、维护数量繁多的 Yaml 文件，并且应用的分发、安装也比较繁琐。Helm 引入了 Charts 的概念，开发者可以把自己的应用配置文件打包成 Charts 格式，发布到 [ArtifactHub](https://artifacthub.io/) (取代了之前的 Helm Hub) 后，安装新的 Kubernetes 应用只需要一条 Helm 命令就能搞定，极大程度上解决了 Kubernetes 应用维护、分发、安装等问题。

> Helm 创始人 Matt Butcher 在 InfoQ 的[一次采访](https://www.infoq.com/news/2019/09/helm-butcher/)中提到：Helm 最初是他和另外几个同事参加 Engine Yard 的一次两天 Hackthon 团建开发的项目，最初是为了解决 Deis Workflow 众多微服务在 Kubernetes 内安装部署繁琐的问题。
>
> Helm 这个名字也很有意思，Kubernetes 是希腊语“船长”的意思，而 Helm 就是船长掌握航行方向的船舵。

### 其他项目

**Deis Labs 团队官网列举了他们的大部分项目，其中有 7 个是 CNCF 项目**。后来笔者调研发现，CNCF 另外几个项目也是 Deis Labs 团队的人和其他公司合作搞的，并没有例举在上面。

![](/static/s2/1/projects.png)

> Deis Labs 官网列出的项目列表，应该是官网没有及时更新，有些项目没有列举上去。

我们重点介绍一下未归档的项目：

#### Akri

<img class="mx-auto" style="width: 200px;" src="/static/s2/1/akri.png"/>

[Akri](https://github.com/project-akri/akri) 是微软在 2020 年 10 月[推出](https://cloudblogs.microsoft.com/opensource/2020/10/20/announcing-akri-open-source-project-building-connected-edge-kubernetes/)的用于帮助 Kubernetes 集群主动发现并利用边缘设备的项目。这里的边缘设备通常是指各种传感器、控制器、相机等 IoT 设备，它们都没办法运行 Kubernetes 充当 Kubernetes 集群的节点。Akri 的目标是想成为边缘 IoT 设备和 Kubernetes 集群交互的标准，所以 Akri 其实是 `A Kubernetes Resource Interface` 的缩写（同时，Akri 也是希腊语 "Edge" 的意思）。

> Akri 是一个 Rust 项目，目前处在 **CNCF 沙盒阶段**。

#### CNAB

[CNAB](https://cnab.io/) 全名 Cloud Native Application Bundle，是 2018 年 12 月微软联合 Docker、HashiCorp、Bitnami 几个公司[一起搞的](https://cloudblogs.microsoft.com/opensource/2018/12/04/announcing-cnab-cloud-agnostic-format-packaging-running-distributed-applications/)新开源包规范。名字看起来高大上，但目前看来，这个规范并没有普及起来，除了微软自己在玩，其他公司很少有在参与。Deis Labs 有一个叫 [Duffle](https://duffle.sh/) 的归档项目，其实就是 CNAB 规范的打包工具，至于为什么被标为归档，笔者也不得而知。

#### Krustlet

<img class="mx-auto" style="width: 300px;" src="/static/s2/1/krustlet.png"/>

[Krustlet](https://krustlet.dev/) 是 Deis Labs 觉得 Kubernetes 生态里面几乎都是 Go 的项目，这是他们为了探索 Rust 怎样和 Kubernetes 结合起来的实验性项目，**是一个 Rust 编写的的 Kubelet，可以直接用来在 Kubernetes 中跑编译成 WebAssembly 的模块。**所以 Kruslet 这个名字其实是  **K**ubernetes-**rust**-kube**let** 的缩写。 

> Kubelet 是 Kubernetes 非常核心的组件，用来调度 Pod 等资源的。

笔者认为 Krustlet 是一个很有创新性的项目，它于 2021 年 7 月份发布了 1.0，并且已经是 **CNCF 的沙盒项目**。

#### Krator

<img class="mx-auto" style="width: 80px;" src="/static/s2/1/krator.png"/>

[Krator](https://github.com/krator-rs/krator) 是 Deis Labs 在开发 Krustlet 过程中抽出来的一个方便构建 Kubernetes Operator 的 Rust 项目。名字是**K**ubernetes **R**ust st**at**e machine operat**or** 的缩写，目前是 **CNCF 沙盒项目**。

#### Mystikos

<img class="mx-auto" style="width: 200px;" src="/static/s2/1/mystikos.png"/>

[Mystikos](https://github.com/deislabs) 是一系列用来帮助在硬件可信执行环境 (Trusted Execution Environment，简称 TEE) 下运行 Linux 容器的运行时和工具。目前仅支持 Intel ® SGX，其他 TEE 硬件将在未来支持。

#### Bindle

[Bindle](https://github.com/deislabs/bindle) 并不能算是产品，它是 Deis Labs 发布的一个 Rust 项目，而且非常有意思。简单来说，Bindle 是一套用来描述文件之间逻辑依赖关系的规范。Deis Labs 提供了 server 和 client 的实现，主要应用场景比如网站打包、依赖库或包管理、WebAssembly 等等。详情可以看看 Bindle 的[规范文档](https://github.com/deislabs/bindle/blob/main/docs/bindle-spec.md)。

#### ORAS

<img class="mx-auto" style="width: 200px;" src="/static/s2/1/oras.png"/>

[ORAS](https://oras.land/) 是 OCI Registry As Storage 的缩写，目前也是 **CNCF 沙盒项目**。笔者了解也不多，暂时没办法给出通俗的解释，欢迎大家补充。

#### Brigade

<img class="mx-auto" style="width: 200px;" src="/static/s2/1/brigade.png"/>

[Brigade](https://brigade.sh/) 是微软在 2017 年底推出的一个借助 Kubernetes 来实现事件驱动、事务处理编排的工具，可以使用在 CI / CD 环节。目前也是 **CNCF 沙盒项目**，但是看起来在国内毫无用户。

#### Hippo

[Hippo](https://github.com/deislabs/hippo) 是 Deis Labs 推出的一个 WebAssembly PaaS 平台，很有创意，笔者个人非常喜欢这个产品。顺便说一下 Hippo 用到的技术就包括前面提到的 Bindle。详细信息可以了解一下 Hippo 的官宣博客。

```urlpreview
https://deislabs.io/posts/introducing-hippo/
```

#### Porter

<img class="mx-auto" style="width: 200px;" src="/static/s2/1/porter.png"/>

[Porter](https://porter.sh) 是微软 2020 年初推出的实现前面说过的 CNAB 规范的打包工具，目前是 **CNCF 的沙盒项目**。笔者没有具体用过，大家感兴趣可以自行了解。

#### WAGI

[WAGI](https://github.com/deislabs/wagi) (WebAssembly Gateway Interface) 是 Deis Labs 在 WebAssembly 领域的一个很有创新性的实验性项目，于  2020 年 10 月发布。简单来说就是任何编译成 WASI 格式的 WebAssembly 模块，都可以用来处理 HTTP 请求。

> [WASI](https://github.com/WebAssembly/WASI) (WebAssembly System Interface Resources) 可以简单理解为 WebAssembly 在浏览器之外（主要是服务端）的规范。
>
> WebAssembly 正处在蓬勃发展的阶段，Deis Labs 最近几年在 WebAssembly 领域做了非常多的创新性尝试，但很多尝试都失败了，为数不多目前有不错进展的大概只有 Krustlet 和 WAGI 了。

#### VSCode 插件

另外，Deis Labs 还参与开发了[一系列](https://github.com/deislabs?q=vscode)和 Kubernetes 有关的 VSCode 插件，比如 VSCode 的 [Kubernetes 插件](https://marketplace.visualstudio.com/items?itemName=ms-kubernetes-tools.vscode-kubernetes-tools)。

总的来说，**Deis Labs 是真的超级富有创造力，几年时间里给 CNCF 贡献了 7 个项目（还不包括合作的项目）**。给人的感觉是成为 CNCF 项目似乎对他们来说是一件轻而易举的事情。**当然不得不说，Deis Labs 的大部分项目都比较超前，比如 Krustlet，Bindle，WAGI，想法真的都很棒，但是目前受众还不是很多，知道这些项目的人也不多，我们只能用长远的眼光去看待这些项目未来的潜力和价值。**

### 合作的项目

Deis Labs 的项目我们已经在上面讲了十几个了，但还不止如此，其他几个 Deis Labs 参与合作过的项目也非常值得一提：

- [Service](https://smi-spec.io/)[ Mesh Interface](https://smi-spec.io/) - 【CNCF 项目】我们之前在第一季第二期提到过的 Kubernetes Service Mesh 统一规范，这个规范主要由微软牵头和各大 Service Mesh 厂商联合制定的，微软这边主要就是 Deis Labs 团队的人在参与。
- [Open Service Mesh](https://openservicemesh.io/) - 【CNCF 项目】这个也是微软和其他公司一起遵循 Service Mesh Interface 规范实现的轻量级 Service Mesh 产品，微软这边同样也是 Deis Labs 团队的人在参与。
- [Open Application Model](https://oam.dev) (OAM) - 这是一个微软在 2019 年联合阿里巴巴一起发布的开放应用模型规范，微软这边主要是 Deis Labs 团队的人在参与。这个规范比较抽象，大家感兴趣可以看看[这篇](https://mp.weixin.qq.com/s/SNNrnlSyZQkiSRe2n3k3Aw)[公众号文章](https://mp.weixin.qq.com/s/SNNrnlSyZQkiSRe2n3k3Aw)。

不知道大家有有没有注意，Service Mesh Interface、Open Service Mesh 这些项目的官网和 Deis Labs 的很多网页风格都非常类似。没错，这些都是 Deis Labs 设计的，他们的风格都是非常清新活泼，充满活力的感觉。

## 核心人物

前面讲了那么多 Deis Labs 的项目，接下来重点介绍一下 Deis Labs 的两位核心人物。

### Gabe Monroy

Gabe Monroy 从 OpDemand 到 Engine Yard 的 Deis 一直都是担任 CTO 角色，当初的 Deis 项目主要也是由他在主导。也是他不错的眼光看到了 Matt Butcher 几个人在 Hackthon 上做的那款产品的潜力，在他的推动下才有了后来的 Helm。

加入微软后，Gabe Monroy 从 Azure 的首席项目经理 (Partner Program Manager) 升到了产品管理副总裁 (Vice President Of Product Management)。

不过，在 2021 年 10 月份，他以 CPO (Chief Product Officer) 的角色[加入了 DigitalOcean](https://investors.digitalocean.com/news/news-details/2021/DigitalOcean-Names-Gabe-Monroy-as-Chief-Product-Officer/default.aspx)，并承担了 DigitalOcean 2024 年第一个 10 亿美金营收的重任 (our first billion in revenue in 2024)，还有 2030 年 4000 万社区新开发者的重任。一个月多前，Gabe Monroy 在 ProductHunt 上举行了一场 [Ask Me Anything 的问答活动](https://www.producthunt.com/discussions/i-m-gabe-monroy-chief-product-officer-for-digitalocean-ama)，他在上面透露他现在是业余农民，现在住在科罗拉多州一个 35 英亩的农场，他和妻子在那里养了很多鸡和家畜。也算是一个充满传奇的人物！

> 前不久，DigitalOcean [收购了 CSS-Tricks.com](https://www.digitalocean.com/blog/css-tricks-joins-digitalocean) 可能也是 Gabe Monroy 在主导推动。

![](/static/s2/1/gabe-monroy.png)

### Matt Butcher

Matt Butcher 是一个非常极客的工程师，他早期是 Deis 项目的核心贡献者，后来是 Helm，Brigade, Krustlet 等项目的主要作者，也是 Deis Labs 的灵魂人物。上面提到的 CNAB，OAM 等规范也是 Matt Butcher 在主导推动。

除了在软件项目上非常高产之外，Matt Butcher 还出过很多书！2016 年一本《给孩子讲 Kubernetes 是什么》（原名 The Illustrated Children’s Guide to Kubernetes）的插画书在国内外开始火起来了，其作者就是 Matt Butcher，现在这本书在 CNCF 官网就[可以看到](https://www.cncf.io/phippy/the-childrens-illustrated-guide-to-kubernetes/)。其他的书包括：

- 《Mastering OpenLDAP》
- Maning 出版的 《Go In Practice》
- O'Reilly 出版的《Learning Helm》

更多书可以看 Matt Butcher 的[博客](http://technosophos.com/)。非常有意思的是，Matt Butcher 本科、硕士、博士都是哲学专业，并没有主修过计算机相关专业，也是一个非常传奇的人物！

![](/static/s2/1/matt-butcher.png)

> 还有一个叫 [Matt Farina](http://www.mattfarina.com/) 的人也非常值得介绍，虽然他不在 Deis Labs，但是他和 Matt Butcher 很早就在惠普相识，后来两人合作开发过很多开源项目，还一起出版过至少 3 本书，上面提到的 《Go In Practice》和 《Learning Helm》主要就是他们俩一起写的。
>
> <p><img style="width: 380px" src="/static/s2/1/helm-book.png"/></p>
>
> Matt Farina 早期也参与 Helm 的开发，是 Helm 的主要贡献者之一。说来真的很巧，Matt Farina 后来加入了 Rancher，被 Rancher 老板梁胜安排做一个新项目，这个新项目就叫 Rancher Desktop！Matt Farina 现在就是 Rancher Desktop 的主要负责人，目前他还是 CNCF TOC 的成员。
>
> 我们之前在第一季讲过 Rancher Desktop，感兴趣可以阅读这篇文章了解更多。
> ```urlpreview
> https://2d2d.io/s1/docker/
> ```

## 新未来

![](/static/s2/1/fermyon.png)

2022 年 1 月，一家名叫 [Fermyon](https://www.fermyon.com/) 的新公司成立了，首轮融资 400 万美金，团队将近 10 位创始成员都来自 Deis Labs，CEO 就是 Matt Butcher。

> 关于 Fermyon 这个词的含义，官方暂时没有给出具体解答，我和 [@zhanghandong](https://github.com/zhanghandong) 有一个初步探讨，猜测应该和基本粒子`费米子` 有关：
> `费米子`和`玻色子`都是宇宙基本粒子，都有**自旋** (Spin) 属性。但是`费米子`喜欢独来独往，而`玻色子`喜欢共享，用`费米子`来对应 WebAssembly 的沙盒隔离性非常恰到。
> 前几天 Fermyon 发布了他们的 WebAssembly 框架，就叫 [spin](https://github.com/fermyon/spin)。

从 Engine Yard 到微软，现在又离开了微软重新开始他们新的征程，几乎还是原班人马，大家都是早已共事多年的好伙伴。过去他们在容器领域崭露头角，这次他们看中的是 WebAssembly 的未来，Fermyon 就是一家全面押注 WebAssembly 的公司，他们把 WebAssembly 称之为云计算的下一波浪潮 (the next wave of cloud computing)。由衷的祝愿他们继续在新的领域开拓创新，取得更大的成就！


> 随着 Deis Labs 大部分核心成员都离职了，Deis Labs 未来的命运就不得而知了。