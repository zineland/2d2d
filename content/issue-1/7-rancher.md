
1999 年 Sun 公司的一名工程师出版了一本书，名为[《The Java Native Interface (JNI)》](https://book.douban.com/subject/3162962/)。这位工程师的名字叫 Sheng Liang（梁胜），他正是 Java 语言 JNI 的作者，在 Sun 公司他还领导过 Java JVM 的开发工作。15 年后的 2014 年，这位曾经的工程师已经成为了一名拥有多次成功创业经验的企业家，在这一年他再度出发，创建了他的第三家公司，也就是本期主题公司 Rancher。

![](/static/s1/7/jni.png)

## 技术梦想家

梁胜这个名字可能并不被大家所熟知，但是他过去的人生履历和所取得的成就无一不值得我们敬佩和赞叹。

- 1988 年梁胜毕业于中科大少年班，1990 年进入耶鲁大学攻读计算机科学，并于 1996 年取得博士学位，师从 Haskell 之父 Paul Hudak 教授。

  > 2015 年 4 月 29 号，Paul Hudak 因白血病去世，梁胜写了一篇[官方博客](https://web.archive.org/web/20150911121712/http://rancher.com/remembering-paul-hudak/)纪念他的这位恩师。

- 博士毕业后加入当时的 Sun 公司，设计和开发了 JNI 和 JVM。
- 2000年，梁胜离开 Sun 公司，开启了自己的第一次创业之旅，创办了应用防火墙软件公司 Teros Network 并担任 CTO。2005 年公司被 [Citrix](http://citrix.com) 收购。
- 2008年，梁胜开始了自己的第二次创业，创办了 Cloud.com 并担任 CEO，推出著名的云计算管理软件 CloudStack，也因此被誉为 CloudStack 之父。此时距亚马逊正式推出 AWS（2006 年）刚刚过去两年。

  > 在创立 Cloud.com 之前，梁胜还曾创立了 Phone.com，通过向电信运营商和手机厂商提供应用来盈利。不过这段经历梁胜很少提起。

- 2011 年 Cloud.com 又被 Citrix 以 2 亿美金的价格收购，梁胜博士成为 Citrix 公司首位华人 CTO。

  > [CloudStack](https://cloudstack.apache.org/) 是云计算领域举足轻重的软件，它的竞品 [OpenStack](http://openstack.org) 于 2011 年才正式推出。2012 年开始 OpenStack 与 CloudStack 竞争异常激烈。2012 年 4 月，在梁胜的推动下，Citrix 将 CloudStack 捐献给了 Apache 基金会，2013 年，CloudStack 正式成为 Apache 的顶级项目。
  >
  > ![](/static/s1/7/cloudstack.png)
  >
  > 不过 CloudStack 还是太过复杂，在后来的竞争中不敌 OpenStack。

- 2014 年，梁胜创办了 Rancher Lab 并担任 CEO。
- 2020 年 2 月 4 日，梁胜入选 CNCF 技术监督委员会（[Technical Oversight Committee](https://www.cncf.io/people/technical-oversight-committee/) ，简称TOC）。

  ![](/static/s1/7/cncf-toc.png)

- 2020 年 7 月 8 日，Rancher 被老牌企业级 Linux 提供商 SUSE 收购，梁胜成为 SUSE 工程与创新部总裁。

作为一名连续创业者，**梁博士是一位标准的技术梦想家，也是一位具有开拓精神的优秀创业者和企业家。** 作为华人工程师的泰斗，梁博士[勉励国内工程师](https://mp.weixin.qq.com/s/3hXMvQa7IO3zS-7JfxRhiQ)：**不要相信程序员只能吃青春饭，绝对没有任何其它职业比编程序更能体现个人创造力和技能的价值，程序员就像艺术家，要努力成为世界一流。**

## Rancher

2014 年，Docker 已经正式发布一年了，CoreOS 也成立了，K8S 正在萌芽中，梁胜博士敏锐的发现一个新的技术变革时代即将到来，未来不可能再是 CloudStack 和 OpenStack 的时代，而将是容器的时代。Rancher 就这样诞生了！

![](/static/s1/7/liangsheng.png)

> 如果把云计算比作是一片大的农场，各种计算资源比作是农场里的“牛”，那 Rancher 想做的就是那个“放牧人”，这也是他们把公司命名为“Rancher（牧场主）”的原因。对于 Rancher 这样的“放牧人”而言，谁家的“牛”都可以放，客户需要什么样的“牛”，Rancher 就会给客户提供相应的“牛”。

![](/static/s1/7/rancher.png)

> Rancher [创立之初的官网](https://web.archive.org/web/20141201085105/http://www.rancher.com/)。官网背景就是一片充满惬意的云下农场，非常应景。

刚开始 Rancher 这款产品的前身是 Rancher 联合创始人 Darren Shepherd 的个人项目 [stampede](https://github.com/cattleio/stampede)，这是一个基于 CoreOS 的混合 IaaS / Docker 编排工具。后来 stampede 重命名为 Rancher，并于 2014 年 11 月 14 号[正式发布](https://web.archive.org/web/20150911135907/http://rancher.com/announcing-rancher-io-portable-infrastructure-services-for-docker/)。这个版本的 Rancher 算是 1.X 版本，它底层的核心项目是一个叫 [Cattle](https://github.com/rancher/cattle) 的编排工具。不过没多久 K8S 发展迅猛，容器编排战争开始打响，Rancher 也跟进支持另外三大编排项目， Rancher 自身的 Cattle 在这场战争最终也是落败给 K8S。这场战争尘埃落定之后，2018 年 Rancher 正式推出只支持 Kubernetes 的 Rancher 2.0 版本，一直到现在都是 Rancher 公司的主打产品。

**Rancher 同样是一个非常具有创造性的公司，他们在不同阶段推出过多款不同产品，这些产品大都数都很成功，当然也有一些产品也并不那么成功。**

![](/static/s1/7/timeline.png)

- **Rancher** - (特指 Rancher 2.X) 一款口碑非常好的企业级 Kubernetes 管理平台。**Rancher 在全球有好几亿次的下载量，绝对是明星级产品。**

  > Rancher 的理念是开源开放，简单易用，并且是支持多云的 100% 云原生产品。Rancher 不仅支持自身的 RKE，也支持主流公有云厂商的 Kubernetes 托管版，比如 AWS 的 EKS，Google 的 GKE 等等。
  >
  > 目前 Rancher 的知名对标产品有：Red Hat OpenShift，VMware Tanzu，Google Anthos 等。
  >
  > ![](/static/s1/7/rancer-ui.png)
  >
  > 上图为 Rancher 创建 Kubernetes 集群时的选择界面。

- [RancherOS](https://github.com/rancher/os) - 一款类似于 CoreOS 的轻量级容器 Linux 发行版，目前该项目已暂停，项目主页给出了暂停原因。
- [RKE](https://rancher.com/products/rke) (Rancher Kubernetes Engine) - Rancher 自己的 Kubernetes 发行版，默认集成在 Rancher 中供用户选择安装。

  > 目前区分 RKE 和 RKE 2 两个版本，RKE 2 是 Rancher 的下一代 Kubernetes 版本，目前主要服务政府项目，后续会替换 RKE。

- [K3S](https://k3s.io/) - 【CNCF 沙盒项目】一款专门为 IOT、边缘计算、CI、ARM 场景的轻量级 Kubernetes。

  > K3S 的名字由来也很有意思：Rancher 希望轻量级的 Kubernetes 应该做到只需要原生版本的一半大小、一半内存占用，而 Kubernetes 是 10 个字母，所以这款轻量级的 Kubernetes 应该只有 5 个字母，所以就叫 K3S 了。

- [K3OS](https://k3os.io/) - 基于 K3S 专为 Kubernetes 而生的极轻量操作系统。
- [Longhorn](https://longhorn.io/) - 【CNCF 孵化中项目】一种可靠、轻便且易于使用的 Kubernetes 持久化存储解决方案。
- [Harvester](https://harvesterhci.io/) - 一款通过 Kubernetes 构建的超融合基础架构（hyperconverged infrastructure，简称 HCI）软件。

  > Harvester 是一个完全由 Rancher 中国研发团队设计和开发的开源软件，笔者刚好有一个朋友就在 Harvester 的这个团队。
  >
  > ![](/static/s1/7/tg-harvester.png)

- [Fleet](https://github.com/rancher/fleet) - 业界首款**海量 K8S 集群** (up to a million clusters) 管理产品。

  > Fleet 是 Rancher 联合创始人 Darren Shepherd 主导的项目，目前正在活跃开发中。细心的读者会发现之前`/s1/coreos`介绍过他们也有一款产品叫 Fleet。它是 CoreOS 团队在早期构建的容器编排系统，目前已经停止维护。**Rancher 的 Fleet 正是 Darren Shepherd 为了致敬 CoreOS 的 Fleet 的。**“我一直是它的忠实粉丝，将这一项目命名为 Fleet 也包含了我的私心。所以我希望重新使用 Fleet 这一名字，这是对这个非常出色的容器领域早期项目的致敬。”

- [Submarine](https://submariner.io/) - 【CNCF 沙盒项目】在 L3 层支持多个 Kubernetes 集群之间的跨集群连接的网络方案。

  > Submariner 可以让位于不同 Kubernetes 集群上的容器无需借助 ingress controller 或者节点端口即可直接通信。

- [Rio](https://github.com/rancher/rio) - 基于 Kubernetes 的 MicroPaaS 平台，后来于 2021 年暂停，官方并未给出具体原因。

  > ![](/static/s1/7/tg-rio.png)
  >
  > 3 月更新：有 Twitter 网友问了为什么暂停 Rio 这个项目的问题， Darren Shepherd 给了一个[简短的回答](https://twitter.com/ibuildthecloud/status/1503411799294500866)。

- [Rancher Desktop](https://rancherdesktop.io/) - 之前介绍过的 Docker Desktop 的一个替代产品，它另外的一个优点是**用户可以在 Rancher Desktop 上非常轻松地切换任何 K8S 的不同版本。**
- [Epinio](https://epinio.io/) - Rancher 被收购后和 SUSE 一起开发的基于 Kubernetes 的 PaaS 项目，目前还在早期阶段。个人感觉 Rio 被暂停可能跟这个项目有关。

  > <p><img style="width: 380px" src="/static/s1/7/tg-epinio.png"/></p>

Rancher 的项目实在是太多了，还有一些项目没有例举出来。Rancher 过去几年深刻洞察行业趋势，发掘客户需求，推出了一个又一个备受欢迎的产品，2020 年被 SUSE 收购后更是强强联合。

## SUSE + Rancher

![](/static/s1/7/suse-rancher.png)

2020 年 7 月 8 号，SUSE 和 Rancher 联合宣布，SUSE 将收购 Rancher，不过双方都未透露具体的收购金额。2020 年 12 月 1 号，Rancher 收购案正式完成。

```urlpreview
https://www.suse.com/c/rancher_blog/suse-enters-into-definitive-agreement-to-acquire-rancher-labs/
```

SUSE 在并购 Rancher 之前，就有 K8S 的产品和团队，但由于 SUSE 在 K8S 上的投入远远不够多，因此这些产品也不太成功。**SUSE 和 Rancher 合并了之后，SUSE 就真正成为 Linux 和 K8S 的业界领头人。能在 Linux 和 K8S 都能做到业界领先的之前只有 Google 和 RedHat，现在多了一个 SUSE 了。**

Rancher 在被收购前只进行了 4 轮总共 9500 万美金融资，最后一轮就在被收购前的三四个月。梁胜在[一次采访](https://www.youtube.com/watch?v=_7ntKvUvsFc)中透露，被收购前 Rancher 的现金流非常充实，融资的 9500 万美金总共也才花了 1 / 3 左右。

最后值得一提的是，因为 Rancher 的创始人是中国人的原因，Rancher 非常注重中国市场，他们在国内有专门的[官网](https://www.rancher.cn/)和独立公司，国内的客户数也非常之多。这也算是中国人做开源的一大优势吧！

> **后续：**
>
> 就在本篇文章发布一天后，Rancher 联合创始人 Darren Shepherd 在推特上[宣布离开](https://twitter.com/ibuildthecloud/status/1492175776057217026) Rancher 和 SUSE。同一天，Rancher 的另外一位核心人物 Vincent Fiduccia 也[宣布退休](https://twitter.com/vincentfiduccia/status/1491851410937303042)。
> ![](/static/s1/7/twitter-shepherd.png)