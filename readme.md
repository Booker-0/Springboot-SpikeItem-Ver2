## Springboot-秒杀活动项目



#### 环境要求

java:java8

ide:idea

Maven  

DBMS:mysql 8.0.17（可自己在pom.xml修改为自己使用的mysql版本）

Nginx

Redis

springboot:2.2.4



#### 项目运行方式：

1.在mysql workbench或者其他mysql gui程序中运行miaosha.sql先建立数据库环境，修改application.properties中redis参数为自己部署环境的参数



2.在idea导入该项目，导入相关依赖，然后在mybatis-generator.xml中修改相关sql连接配置，修改application.properties中的端口配置。



3.运行app，直接在浏览器打开resources目录下的getotp.html进行测试。





#### **电商秒杀应用简介**

> * 商品列表页获取秒杀商品列表
>
> * 进入商品详情页获取秒杀商品详情
>
> * 秒杀开始后进入下单确认页下单并支付成功
>
>   





