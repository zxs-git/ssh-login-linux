# SSHLoginLinux

#### 介绍
SSHLoginLinux 是一个在linux 终端进行远程登录的工具。登陆不需要手动输入密码
#### 运行环境

1. linux 系统
2. python3X 版本

#### 安装教程

1. git clone https://gitee.com/zhangxingsheng/ssh-login-linux.git master | [最新tag]
2. pip install PrettyTable
3. yum install -y expect


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
[zhangxs@localhost server]$ ./menu.python 
1:开发环境
2:测试环境

```


3：选择 对应 **环境编码** 

```
[zhangxs@localhost server]$ ./menu.python 
1:开发环境
2:测试环境
please input env num:1
+========================开发环境===============================+
+------+-----------------+-----------------+------------------------+
| 编号 | 内网ip          | 外网ip          | 备注                   |
+------+-----------------+-----------------+------------------------+
|  1   | xxx.xxx.xxx.xxx | xxx.xxx.xxx.xxx | mariadDB,Redis,MongoDB |
+------+-----------------+-----------------+------------------------+
please input server num:

```
4：选择对应的 **服务器编码** 进行登录

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

1. 使用到 PrettyTable 表格绘制工具
2. Linux expect 自动化交互套件


#### 使用技巧
1. 在【环境列表】输入 0 或者 回车 直接退出 ssh-login-linux 登录。

```
# 回车
[zhangxs@localhost server]$ ./menu.python 
1:开发环境
2:测试环境
please input env num:
[zhangxs@localhost server]$ ./menu.python 
# 输入 0
1:开发环境
2:测试环境
please input env num:0

2. 在【服务器列表】输入 0 返回【环境列表】。
3. 当输入的编码，大于当前数据列表的长度，会刷新当前配置表格。
[zhangxs@localhost server]$ 
```

