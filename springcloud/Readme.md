## 介绍

​	这是一个基本的springcloud微服务架构模式

## 运用技术

​	eureka  ---服务注册与发现    集群

​        ribbon+rest  ---负载均衡  可替换负载均衡算法

​        feign              ---负载均衡  接口注释形式实现

​	hystrix           --- 服务降级以及服务熔断 图形化界面查看访问情况

​	config            --- 通过github调试配置  

​	配置文件地址： git@github.com:ZJiawe/microservicecloud-config.git

## 使用方式

​	  由于尽可能模拟生产环境因此需要改一下host配置文件或者自行更改配置文件

**host文件尾部添加**：C:\Windows\System32\drivers\etc\hosts

```
127.0.0.1       eureka7001.com
127.0.0.1       eureka7002.com
127.0.0.1       eureka7003.com
127.0.0.1       gateway-9527.com
127.0.0.1       config-3344.com
```

​		下载本地，自动导入包完。

​		如果电脑性能够好每个微服务都可打开。。。

​    

