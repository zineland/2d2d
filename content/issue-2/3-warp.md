每个工程师电脑里面都有两款必不可少的软件，一款为代码编辑器，另一款就是终端 (Terminal)。前者在过去几十年里几乎从来没有停止过创新，诞生过的代码编辑器产品可谓数不胜数。目前这部分市场份额虽然已经被 JetBrians 的商业 IDE 和微软开源免费的 VS Code 所垄断，但人们依然在乐此不彼的不断折腾，不断打造新的代码编辑器。而后者则完全是另外一番凄惨景象，过去几十年来终端软件的产品形态、交互方式等等各方面几乎没有大改进。可能大多数人似乎对现有终端软件习以为常了，以至于形成了某种思维定式：现在的终端已经够用了呀，还有啥好创新的？而本期的主角 Warp 却不这样认为。他们认为终端软件还大有可为，为此他们要打造一款属于 21 世纪的终端。

## 终端的困境

<p>
<img class="bg-black" src="/static/s2/3/terminals.png">
</p>

终端软件从现代计算机诞生以来就存在了，在 GUI 图形化软件被发明以前，终端几乎是人和计算机交互的唯一方式。一直到今天，每个人的电脑里面默认都会自带一款终端软件，这足以说明终端的重要性。但是，如今的终端就像开头提到的一样，其实陷入了某种困境。

- **操作系统开发商没有足够动力去优化内置的终端软件**。系统内置的终端只保证能用，却不保证好用。因为终端的受众主要是工程师，其他人群几乎用不上，而工程师在所有用户中占比太小，不值得操作系统厂商花额外的成本去给你提供一个更好的终端软件。（最近几年微软良心发现，开发了新的 [Windows Terminal](https://github.com/microsoft/terminal)，值得称赞）
- **社区开发的终端软件难以盈利**。因为操作系统默认提供了一个免费能用的终端，大家都习惯了终端软件就应该是免费的，所以就算社区提供了更好的终端替代品，却依然难以商业化。正是因为难以盈利，就会有越少的开发者去开发更好的终端。为什么我们能看到很多付费的 Git GUI 软件，却很少发现付费的终端软件？我想这就是可能原因之一。
- **痛点一直有，但解决方案太分散，门槛较高**。系统自带的终端软件有非常多的槽点，社区针对不同的痛点诞生了不同的工具来解决。默认的 bash 不好用，于是诞生了 zsh 和 fish；zsh 默认的配置太繁琐，UI 不好看，于是诞生了傻瓜式的 [oh-my-zsh](https://ohmyz.sh)；终端的 session 不能保存，不能共享，于是有了 [tmux](https://github.com/tmux/tmux)；终端命令行提示不够友好，不够智能，于是有了 [Fig](https://fig.io) 。总的来说，虽然每个痛点都有对应的解决方案，但是最大的问题是真的很分散，而且有些方案门槛比较高，比如 tmux。
- **懒惰是天性，能用就行**。我们不得不承认，我们都很懒。绝大多数人都不会花额外的时间去学习掌握这些工具，大都数人的选择是妥协，能用就行。

以上种种，让**终端软件一直处在他的困境之中，以至于在几十年时间里，创新乏善可陈，用户安于现状，无人愿意打破僵局**。直到 Warp 的出现，这一状况似乎有了新的变局。

## Warp

![](/static/s2/3/warp.png)

Warp 是一家创立于 2020 年的公司，创始人兼 CEO Zach Lloyd 是前 Google 资深工程师，Google Docs / Sheets 的 tech leader，离开 Google 后他有两次创业经验。之所以创立 Warp 是因为他看到了终端软件的这一困境，40 多年来几乎没有太大创新，于是决定以创业的形式打造一款全新的终端。

```urlpreview
https://www.warp.dev/blog/introducing-warp
```

笔者初步体验了一下 Warp，整体来说真的很不错，有不少细节值得称赞。下面重点介绍其中的几项：

### Block

Block 真的是 Warp 的一个很不错的创新。在 Warp 里面，每一次命令的输入输出都是一个 Block。不像传统的终端，所有命令和输出都混在一起，肉眼很难区分相邻两条命令的内容，也不方便往上查找之前的命令。Warp 的 Block 很好的解决了这个问题。

![](/static/s2/3/warp-block.png)

而且 Block 提供了很多非常实用的功能，比如它把 Copy 功能划分特别细，你可以选择 *Copy command, output, prompt, Working Directory* 等等，还可以把当前 block 以链接的形式分享出去。*Find Within Block* 也是一个非常棒的功能！

### Workflow

Warp 提供了一个 Workflow 的功能，简单来说就是把常用的命令创建成模板，使用的时候把参数替换一下就可以了。Warp 还专门搞了一个 [commands.dev](https://commands.dev) 的站点，每个人都可以制作和分享自己的 Workflow。

> Warp 还提供了一个 AI 功能，可以用自然语言描述一下你要做的事情，Warp 会生成相应的命令。（应该也是使用了 OpenAI 的 API）

![](/static/s2/3/warp-workflow.png)

### 进阶版 Fig

Fig 是这两年来笔者看到的终端软件领域最大创新的产品之一，他有很不错的命令行提示，支持各大主流终端软件，其中尚未发布的 **App Ecosystem for Terminal** 更是让笔者眼前一亮，非常惊艳！

<video preload="auto" style="margin-top:1.75rem;max-width:976px;border-radius:0.5rem" width="100%" autoplay="" controls="" loop="" muted="" playsinline=""><source src="/static/s2/3/fig-video.mp4" type="video/mp4">Sorry, your browser doesn't support embedded videos.</video>

而 Warp 确实是有借鉴了 Fig 的功能，他的命令行补全直接使用了 Fig 的 [completion specs](https://github.com/withfig/autocomplete)，不过因为 Warp 本身是一个终端，他把命令行补全体验做得比 Fig 更好，更极致。上图 Fig 的 **App Ecosystem** 我想 Warp 肯定也会做，甚至会做得更方便。

> 因为 Fig 不是终端，只是一个终端辅助软件，每次都需要输入 `fig` 命令才能使用 **App Ecosystem** 的功能，Warp 或许能做到更极致。未来 Warp 收购 Fig 也不是不可能的事情。

### 团队协作

过去的终端软件自始至终都是一个单人使用的本地软件，最近几年很多工具都有了团队协作功能，那么**终端软件也需要团队协作吗？Warp 的 CEO 认为是的**：*Every productivity application is more powerful when it’s collaborative. I’m confident that the terminal is no exception.* 他还提到终端的团队协作不仅仅是 Google Docs, Figma 那种实时协作，还有异步协作，比如共享终端、命令行、设置、历史记录等等方式。目前团队协作功能还未发布，笔者也未曾体验到，所以我们只能拭目以待了。

![](/static/s2/3/warp-collaboration.png)

### 其他特点

- **现代化的设计**。Warp 整体设计充满现代感，UI 颜值也不错，毕竟他们专门有一个 Founding Designer.
- **开箱即用**。Warp CEO 之前写了一篇博客，讲到他们的 [8 条产品准则](https://www.warp.dev/blog/how-we-design-warp-our-product-philosophy)，其中包括 `backwards compatible` 和 `out-of-the-box`。笔者在初次使用过程中也确实体会到了这一点，不需要额外繁琐的配置，就能跟我之前使用的终端习惯非常接近，毫无违和感。
- **高性能**。Warp 最初的原型是使用 Electron 开发，但因为性能太糟糕，所以转用了 Rust 开发 + GPU 渲染。关于具体的 Warp 技术栈官方写了一篇 [How Warp Works](https://www.warp.dev/blog/how-warp-works) 的文章，感兴趣可以自行了解。

## 商业模式

Warp 在他们的 [FAQ](https://www.warp.dev/faq) 中提到了他们的商业模式：**对个人免费，团队协作功能需要付费**。这个模式也是目前主流 SaaS 软件的盈利模式，在过去各大 SaaS 公司得到了很好的验证。笔者认为，Warp 选择这个模式是非常适合的。我们前面讲到，个人需付费的终端是很难让用户买单的，所以不能针对个人用户收费。其次，终端在开发者领域是一个受众非常广的软件，他的用户基数会非常大，企业内的工程师必不可少的会用到 Warp。**至于 Warp 后期企业付费客户能做到多大，ARR 营收能达到多少，就要看他提供的团队协作功能是不是真正能解决能企业内的需求了。**

## 融资情况

![](/static/s2/3/warp-cover.jpg)

Warp 目前总共获得了两轮融资，分别是 2021 年 1 月，GV (Google Ventures) 领投的种子轮 600 万美金。最新一轮是 2022 年 4 月 5 号 1700 万美金 A 轮，主要是科技圈几位知名人物的个人投资，其中包括 Figma 的创始人及 CEO [Dylan Field](https://www.linkedin.com/in/dylanfield/) (A 轮领投)，AirBnB、Pinterest、Stripe 和 Square 的早期投资人 [Elad Gil](https://www.linkedin.com/in/eladgil/)，LinkedIn 执行董事长兼前 CEO [Jeff Weiner](https://www.linkedin.com/in/jeffweiner08/)，还有 Salesforce 创始人兼 CEO [Marc Benioff](https://www.linkedin.com/in/marcbenioff/)。

```urlpreview
https://www.linkedin.com/pulse/why-im-leading-warps-series-dylan-field
```

两轮融资总共 2300 万美金，对于一个偏工具类产品来说确实是非常可观。资本可不是慈善，两笔融资或许跟 Warp 创始人个人人脉有关，但更重要的是 Warp 的产品实力和他们的愿景能让资本买单。终端软件过去几十年的一成不变，的确需要一场革新。这场革新或许将由 Warp 来书写，资本便是这场革新的催化剂。

## 总结

Warp 的这笔融资最近在国内也吸引了不少开发者的注意，大家都会诧异为什么“老掉牙”的终端软件还能获得如此大笔融资？我们很少去思考过为什么终端软件会“老掉牙”？他是不是就该“老掉牙”？这也给笔者一个小小的启发：`往往被大多数人所忽略的场景，正好是非常好的创新之处。`另一方面，这件事或许会让国内的资本更多的关注到开发者赛道，或许也能激发更多开发者领域的创新者诞生。最后引用张汉东在另一篇 Warp 文章结尾写的一段话：

> Warp 给我的感触最深的不是它的功能有多丰富强大，也不是它巨大的商业价值，而是，它很可能标志着国外软件现代化革命浪潮的开始。我们中国能赶上这一波吗？
>
> 山形海岸已变迁，云垒故道俱为烟。吾辈登临应有意，敢为李杜续新篇。

<hr>

> 本文最初由 [张汉东](https://github.com/zhanghandong) 投稿，后由笔者从另外一个角度重新编写。标题中`终端的困境`受张汉东的文章所启发，在此再次感谢张汉东，也强烈推荐阅读他的文章。

```urlpreview, image:false
https://mp.weixin.qq.com/s/KOVqdCnf73ptg8dmLYf5Aw
```
