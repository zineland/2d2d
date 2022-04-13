
除了云原生领域的开发者和从业者之外，其他人几乎很少听过 CoreOS 这家公司，未来这个名字估计会越来越少被人听到。2020 年这家公司的官网 ([https://coreos.com](https://coreos.com)) 全面下线，消失在互联网中，甚至在 Google 上也不留痕迹。现在我们只能在[互联网档案馆](https://web.archive.org/web/20170920080743/https://coreos.com/)上一瞥他曾经的辉煌和荣耀。CoreOS 是一家什么样的公司？他曾经塑造了什么样的传奇？

## 创立初心

![](/static/s1/5/garage.png)

> CoreOS 成立时的车库。图来源于 Wired 在他们成立没多久时的一篇专访文章：[Linux Hackers Rebuild Internet From Silicon Valley Garage](https://www.wired.com/2013/08/coreos-the-new-linux/)

时间回到 2013 年，两位俄勒冈州立大学多年前的校友 Alex Polvi 和 Brandon Philips 在硅谷的一间车库里面成立了 CoreOS，这既是他们的产品名也是公司名。CoreOS (后改名为 Container Linux) 的定位是一款**为容器而生**，并**支持平滑升级**的轻量级 Linux 发行版。

- **为容器而生**：2013 年两位创始人就看到了未来是容器的时代，他们相信需要一款只运行容器的操作系统。
- **支持平滑升级**：Google 的 Chromium OS 的一大革新技术是支持定期自动升级，这样能够把安全漏洞的修复及时推送给用户。而服务器上的 Linux 发行版，少则半年，多则数年才能得到更新。CoreOS 想把 Chromium OS 的这一特性带到服务端，所以他们 fork 了 Chromium OS，删掉了无关的代码开始开发 CoreOS。

> CoreOS 的设计初衷之一就是“解决互联网上普遍存在的服务器系统及软件由于没有及时升级和应用补丁，造成已知漏洞被恶意利用导致的安全性问题”。
>
> 值得一提的是 Brandon Philips 在创立 CoreOS 之前已经在 SUSE Linux 作为一名内核工程师工作了 4 年多了。而当时另外一名资深的 Linux 内核维护者  [Greg Kroah-Hartman](http://en.wikipedia.org/wiki/Greg_Kroah-Hartman) 则是他们的技术顾问。2021 年 4 月，明尼苏达大学的教授故意向 Linux 提交漏洞代码来做研究，就是被 Greg Kroah-Hartman 给封禁的。

## 一路开挂

自创立 CoreOS 之后，这家公司的产出和取得的成就只能用**一路开挂**这个词来形容：

- [Etcd](https://etcd.io) - **【CNCF 毕业项目】** 当初为 CoreOS 设计的分布式版 /etc 配置模块，etcd 名字就是 /etc (Linux 的配置目录) + distribution 首字母组成。**现在已成为了享誉世界的开源分布式 KV 数据库，Kubernetes默认的 KV 存储组件。**

  > Etcd 最初的两位核心作者都是中国人，当时是 CoreOS 的员工。

- [Fleet](https://github.com/coreos/fleet) - 当年容器编排领域除了 Kubernetes, Docker Swarm, Apache Mesos 之外的第四大竞争产品，后续被 Kubernetes 替代。
- [Kubernetes](https://kubernetes.io/) - **【CNCF 毕业项目】** 2014 开始 CoreOS 就深度参与 Kubernets 的开发迭代，成为了除 Google 之外的第二大贡献者。
- [Flannel](https://github.com/flannel-io/flannel) - CoreOS 当初为 Kubernets 设计的网络基础组件。
- [Quay.io](https://quay.io/) - 2015 年收购的容器镜像托管服务，当时与 Docker Hub，Google [gcr.io](https://gcr.io) 并列的镜像托管中心。
- [Clair](https://github.com/quay/clair) -  为 quay.io 打造的容器镜像安全漏洞扫描与分析的项目，现在已经成为镜像扫描的最主流开源解决方案。
- [Operator Framework](https://operatorframework.io/) - **【CNCF 孵化中项目】** CoreOS 2016 年提出了 Kubernets Operator 的模式，2018 年推出 Operator Framework 项目帮助开发者快速编写 Operator，后来捐赠给 CNCF，目前处于孵化阶段。
- [Rkt](https://github.com/rkt/rkt) - **【CNCF 归档项目】** 当时为了和 Docker 竞争而推出的容器运行时，后来和 Docker 的 containerd 一起捐赠给 CNCF，现在 rkt 已经退出历史舞台。
- [CNI](https://cni.dev) - **【CNCF 毕业项目】** 之前在 CNCF 那篇文章提到过的通用的容器网络规范，就是由 CoreOS 捐赠的。
- [Dex](https://dexidp.io/) - **【CNCF 沙盒项目】** 一个 OpenID Connect 协议的 Go 实现库，也捐赠给了 CNCF。

![](/static/s1/5/product.png)

另外，CoreOS 是 CNCF 2015 年创立时的最初始成员之一，当时他们公司成立才两年。

上述这些产品在现在依然影响深远，可以毫不夸张的说：**云原生领域的半壁江山都是构建在这些产品的基础上的，这种一路开挂的操作在世界上恐怕没有几家创业公司可以与之匹敌。**

## 商业化

CoreOS 的产品非常具有前瞻性，在早期都没多少人知道容器、Kubernets 是啥的时候，他们已经开始做商业化了。当时他们最主要的商业化产品有三款：

- Container Linux - 商业化版本的 Container Linux 是专门为容器打造的操作系统，客户可以在各大公有云厂商 Marketplace 上购买，也有其他云厂商跟他们合作，比如 DigitalOcean。并且提供付费客户支持和培训。
- Quay.io - 上面提到过，一个容器镜像托管、安全扫描的产品。
- Tectonic - 企业级的 Kubernetes 容器编排产品。

**这三款产品形成了一个完整的容器操作系统、镜像托管、容器编排的链路，商业思路也非常清晰。** CoreOS 在其[四周年的博客](https://web.archive.org/web/20190113053653/https://coreos.com/blog/coreos-fourth-birthday)中提到当时他们有 2000+ 家全球的主要客户 (Key customers)。

![](/static/s1/5/martix.png)

## 被收购

2014 年 RedHat 看到了 CoreOS 的崛起，推出了对标 CoreOS 的项目 - [Atomic](https://projectatomic.io/)。同时，RedHat 的另一款商业产品 OpenShift 跟 CoreOS 的 Tectonic 也存在非常大的竞争关系。经过几年的相爱相杀，RedHat 和 CoreOS 达成共识。**2018 年 1 月 30 号，RedHat 以 2.5 亿美金的价格全资收购 CoreOS（*当时 CoreOS 的员工才 130 人*）。** 收购后，CoreOS 的 Container Linux 和 Atomic 合并进 Red Hat Enterprise Linux，CoreOS 的 Tectonic 合入 OpenShift，Quay.io 则作为 RedHat 的子产品继续存在。

```urlpreview
https://www.redhat.com/en/blog/faq-red-hat-acquire-coreos
```

![](/static/s1/5/acquire.png)

被收购前，CoreOS 只经历了三轮融资（种子轮、A 轮和 B 轮），总共融资 4800 万美金，投资机构包括 YC，GV (Google Ventures)，A16Z，Accel 等。

被收购后，经过差不多两年的整合，两位创始人也相继离开了 RedHat，然后出现了开头提到的那一幕：CoreOS 网站全部下线，所有 CoreOS 相关产品镜像也全部下线。**短短五年时间里，CoreOS 可谓是创造了传奇，他们虽然没有走向独立 IPO 这条路，但是被巨头收购也算是不错的归宿。**

CoreOS 的创始人和这家公司都非常低调，在网上很难找到跟他们有关的资料。2021 年 GV 对 CoreOS 两位创始人的采访视频算是为数不多的宝贵资料。这篇采访的主题是：谈论他们是如何抓住巨大机会的。

```urlpreview
https://www.gv.com/news/core-os-founders/
```

> 后续：
>
> CoreOS 被 RedHat 收购后，开源社区推出了 [Flatcar](https://www.flatcar.org/) Container Linux 作为开源版 Container Linux 的接任者，RedHat 也推出了开源版的 [Fedora CoreOS](https://getfedora.org/en/coreos) (Google 搜索 CoreOS 的第一条结果就是这个）。
