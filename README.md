# CrityOS

> Crity means Curiosity ，represents human curiosity to explore the world

CrityOS is Curiosity



下载编译安装 [bochs](https://sourceforge.net/projects/bochs/files/bochs/2.6.10/) ，建议下 `bochs-2.x.x-msvc-src.zip` 说是更完整。

不要使用 brew 安装，因为它安装的 bochs 不会启动 x display（会用 screen 代替）

```bash
./configure \
    --prefix=/opt/bochs \
    --enable-debugger \
    --enable-disasm \
    --enable-iodebug \
    --enable-x86-debugger \
    --with-x \
    --with-x11
```

然后 `make install`，再添加一下环境变量

```bash
export BXSHARE="/opt/bochs/share/bochs"
export PATH="$PATH:/opt/bochs/bin"
```

最后去官网直接下载安装相应的 [x display 桌面环境](https://www.xquartz.org/)

启动成功

![xdisplay](https://cdn.jsdelivr.net/gh/ybm911/blog_picture/img/image-20220523144953449.png)

> 🔥如果自启动失败，可能是 $DISPLAY 变量没有自动设置好
>
> https://github.com/XQuartz/XQuartz/issues/235

![image-20220523144714207](https://cdn.jsdelivr.net/gh/ybm911/blog_picture/img/image-20220523144714207.png)





Copyleft(R) 2022 YBM
