# SSHLoginLinux

#### 介绍
SSHLoginLinux 是一个在linux 终端进行远程登录的工具。每次登陆不需要手动输入密码
#### 软件架构



#### 安装教程

1：git clone https://gitee.com/zhangxingsheng/ssh-login-linux.git master | [最新tag]
2：pip install PrettyTable
3: yum install -y expect

#### 使用说明
1：修改 serverConfig.json 文件，填入你的服务器密码
```
[{
    "ENV": "开发环境",
    "SERVICE_LIST": [
      {
        "inIp": "xxx.xxx.xxx.xxx", # 内网ip
        "outIp": "xxx.xxx.xxx.xxx",# 外网ip
        "password": "pass",# 登录密码
        "user": "user", # 登录账号
        "remark": "mariadDB,Redis,MongoDB" # 服务器备注
      }
    ]
  },
 {
    "ENV": "测试环境",
    "SERVICE_LIST": [
      {
        "inIp": "xxx.xxx.xxx.xxx", # 内网ip
        "outIp": "xxx.xxx.xxx.xxx",# 外网ip
        "password": "pass",# 登录密码
        "user": "user", # 登录账号
        "remark": "mariadDB,Redis,MongoDB" # 服务器备注
      }
    ]
  }
]

```
2：执行 menu.python 脚本

```
./menu.python
```
1:开发环境
2:测试环境
3:生产环境

3：选择 对应环境的编码

```
[zhangxs@localhost server]$ ./menu.python 
1:开发环境
2:测试环境
3:生产环境
please input env num:1
+========================开发环境===============================+
+------+-----------------+-----------------+------------------------+
| 编号 | 内网ip          | 外网ip          | 备注                   |
+------+-----------------+-----------------+------------------------+
|  1   | xxx.xxx.xxx.xxx | xxx.xxx.xxx.xxx | mariadDB,Redis,MongoDB |
+------+-----------------+-----------------+------------------------+
please input server num:

```
4：选择对应的服务器编码

```
+========================开发环境===============================+
+------+-----------------+-----------------+------------------------+
| 编号 | 内网ip          | 外网ip          | 备注                   |
+------+-----------------+-----------------+------------------------+
|  1   | xxx.xxx.xxx.xxx | xxx.xxx.xxx.xxx | mariadDB,Redis,MongoDB |
+------+-----------------+-----------------+------------------------+
please input server num:1
spawn ssh user@xxx.xxx.xxx.xxx
```




#### 参与贡献

1.  Fork 本仓库
2.  新建 Feat_xxx 分支
3.  提交代码
4.  新建 Pull Request


#### 特技

1.  使用 Readme\_XXX.md 来支持不同的语言，例如 Readme\_en.md, Readme\_zh.md
2.  Gitee 官方博客 [blog.gitee.com](https://blog.gitee.com)
3.  你可以 [https://gitee.com/explore](https://gitee.com/explore) 这个地址来了解 Gitee 上的优秀开源项目
4.  [GVP](https://gitee.com/gvp) 全称是 Gitee 最有价值开源项目，是综合评定出的优秀开源项目
5.  Gitee 官方提供的使用手册 [https://gitee.com/help](https://gitee.com/help)
6.  Gitee 封面人物是一档用来展示 Gitee 会员风采的栏目 [https://gitee.com/gitee-stars/](https://gitee.com/gitee-stars/)
