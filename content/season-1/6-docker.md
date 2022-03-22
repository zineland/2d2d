
> <img class="mx-auto" style="width: 150px;" src="/static/s1/6/docker-logo.png"/>
>
> 亲爱的开发者，您好，
>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;感谢您过去一年使用 Docker 公司的产品！2022 年新春将至，Docker 公司祝您新年愉快，虎年大吉！
>
> Docker 团队敬上

啊不对，发错了，赶紧撤回！应该发这封的：

> <img class="mx-auto" style="width: 150px;" src="/static/s1/6/docker-logo.png"/>
>
> Hello,
>
> As a reminder you’re receiving this email because on August 31, 2021 we updated the [terms](https://www.docker.com/legal/docker-subscription-service-agreement) applicable to the Docker products or services you use.
>
> **On January 31, 2022, the grace period ends for free commercial use of Docker Desktop in larger enterprises.** Companies with **more than 250 employees OR more than $10 million USD in annual revenue now require a paid subscription to use Docker Desktop.** [Read the blog](https://www.docker.com/blog/the-grace-period-for-the-docker-subscription-service-agreement-ends-soon-heres-what-you-need-to-know) or visit our [FAQ](https://www.docker.com/pricing/faq) to learn more about these updates.
>
> **What you need to know:**
>
> - [Docker Desktop](https://www.docker.com/products/docker-desktop) remains free for personal use, education, non-commercial open source projects, and small businesses with fewer than 250 employees AND less than $10 million USD in annual revenue.
>
> - By continuing to use Docker, you are agreeing to the new [Docker Subscription Service Agreement](https://www.docker.com/legal/docker-subscription-service-agreement).
>
> - For organizations requiring Single Sign-On (SSO), it is now generally available for [Docker Business](https://www.docker.com/products/business) subscribers.
>
> To purchase a Docker subscription, visit our [pricing page](https://www.docker.com/pricing) to compare subscription tiers, starting at just $5 per month, per user on an annual basis. For organizations with more than 50 users requiring an invoice, [contact sales](https://www.docker.com/pricing/contact-sales).
>
> Thank you,
>
> The Docker Team

这是一封 Docker 公司于 2022 年 1 月 26 日凌晨发出的邮件，相信不少使用 Docker 的同学都有收到。这封邮件不是祝我们新年愉快，虎年大吉的，反而是来向我们宣布一件事：**2022 年 1 月 31 号之后，员工数大于 250 人，或每年营业额大于 1000 万美金的公司不能再免费使用 Docker 公司的 Docker Desktop 了。要想使用，对不起必须按月打钱，价格最低 $5/人/月。** 

员工数大于 250 人，营业额大于 1000 万美金，字节跳动每一条都满足。难道说过了 1 月 31 号，我在字节还真不能免费使用 Docker Desktop 了？去 IT Service 应用里搜索暂时还没发现 Docker 包含在里面，难道以后使用 Docker Desktop 还需要去 IT Service 里面申请购买？

> 不知道哎，反正也是年后的事情。**年后的事情等年后再说！**
>
> 3 月更新: 在字节内部某位同学的推动下，字节已正在和 Docker 公司在对接了。

![](/static/s1/6/docker-desktop.png)

> 笔者 Docker Desktop 的截图

**Docker 这家公司虽然把容器技术在全世界发扬光大了，但他们自己过得却并不好，过去多年的商业变现尝试几乎都失败了。**

- 2017 年 Docker Swarm 在容器编排竞争中彻底输给 Kuberneters；
- 2018 年 3 月 28 号，联合创始人 Solomon Hykes 宣布离开 Docker；
- 2018 年 5 月 21 号，Docker Cloud 关停；
- 2019 年 11 月 13 号，一家当时仅 450 人的公司 Mirantis [收购](https://www.mirantis.com/company/press-center/company-news/mirantis-acquires-docker-enterprise/)了 Docker 的 Enterprise 业务，近 300 名 Docker 员工加入 Mirantis。
- Docker 公司从 2013 年成立至今更换了 4 任 CEO。

![](/static/s1/6/au-revoir.png)

> 创始人 Solomon Hykes 离开 Docker 公司时的配图。详情见官宣博客：[https://www.docker.com/blog/au-revoir/](https://www.docker.com/blog/au-revoir/)

**现在 Docker 公司还有什么拿得出手的产品吗？似乎没有了，只剩下 Docker Hub 和 Docker Desktop 了。** 实际上 Docker Hub 的私有镜像服务也是打包在 Docker Desktop 里面售卖的。Docker 公司的 [pricing 页面](https://www.docker.com/pricing)现在也非常简单，只有一款产品：Docker Desktop！

![](/static/s1/6/docker-pricing.png)

**就算这样，社区依然让 Docker 公司不好过**。因为 Rancher 看到 Docker 公司连 Desktop 都不允许免费使用后就推出了 Rancher 版的 Desktop。**2022 年 1 月 26 日，就在 Docker 公司发出上面那封邮件的同一天，Rancher 宣布 Rancher Desktop 1.0 发布！**

> Rancher Desktop 的官网：[https://rancherdesktop.io/](https://rancherdesktop.io/)

```urlpreview
https://www.suse.com/c/rancher_blog/rancher-desktop-1-0-0-has-arrived/
```

虽然 Rancher Desktop 还没有 Docker Desktop 那么成熟，但他确实是一个值得期待的 Docker Desktop 免费替代品！

说到 Rancher，这家公司也非常值得分享，这将是我们下一期的主题。**刚好要放假了，放假就应该有放假的样子，Rancher 的事也年后再说！**

![](/static/s1/6/later1.jpg)

![](/static/s1/6/later2.png)