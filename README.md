
《JSP 课程设计报告书》

题目：318宿舍管理系统

一、需求分析。

318宿舍成员可以在apache本地服务器上访问http：//localhost：8080：hlb/login 进入登录界面。然后可以进行登录自己的账户查看自己的信息，如若没有可以进入注册界面完成注册。同时有友情链接320宿舍、321宿舍。
管理员(黄立兵)可通过自己的账户登录到管理员主界面，可查看所有成员的信息，同时可完成对成员信息的增删改查四项功能。

二、数据库设计。

本地连接，数据库名为：318dormitory
1.宿舍成员登录账户(account)表，包括账号，密码。支持成员自行注册账户。	

如图：
![account](https://img-blog.csdnimg.cn/20200102214642439.png)

2.宿舍成员信息 (student)表，包括学号、姓名、性别、生日、群众面貌、婚配情况、军衔。仅管理员有权限管理信息。

如图：
![student](https://img-blog.csdnimg.cn/20200102214715963.png)

三、程序结构框图。
![Structure](https://img-blog.csdnimg.cn/20200102214803255.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzQ0ODI0NDAw,size_16,color_FFFFFF,t_70)

四、程序功能说明。

Login.jsp 程序实现主界面(登录界面)
* 友情链接login2.jsp(320宿舍)  
* login3.jsp(321宿舍)
* 注册界面sign-up.jsp完成注册并连接数据库(添加到account表中)  
* check.jsp检测输入内容，确定进入管理员界面(默认

admin 123456)或宿舍成员自己的页面。并且连接上了数据库，登录账号密码必须是(account)表的记录

Member.jsp 程序实现宿舍成员自己的信息界面(支持反馈错误信息及修改密码)

Admin.jsp 程序实现管理员界面
* do.jsp 检测点的哪个操作(增删改查)跳转相应界面
* * 添加信息add.jsp程序
* * 删除信息delete.jsp程序
* * 修改信息 update.jsp程序
* * 查询信息 query.jsp程序
* Success.jsp程序接受反馈，提交等成功提示信息

五、系统实现界面。
登录界面：
![login](https://img-blog.csdnimg.cn/20200102214918994.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzQ0ODI0NDAw,size_16,color_FFFFFF,t_70)

注册界面：
![sign-up](https://img-blog.csdnimg.cn/20200102214953925.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzQ0ODI0NDAw,size_16,color_FFFFFF,t_70)

友情链接：
![320](https://img-blog.csdnimg.cn/2020010221503350.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzQ0ODI0NDAw,size_16,color_FFFFFF,t_70)

(以下内容均应在318所对应的(login.jsp))
318宿舍成员各自信息界面：
![318](https://img-blog.csdnimg.cn/20200102215148826.png)
管理员界面：

![admin](https://img-blog.csdnimg.cn/20200102215221774.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzQ0ODI0NDAw,size_16,color_FFFFFF,t_70)
添加信息：
![add](https://img-blog.csdnimg.cn/20200102215321896.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzQ0ODI0NDAw,size_16,color_FFFFFF,t_70)	

删除信息：
![delete](https://img-blog.csdnimg.cn/20200102215347864.png)

查询信息：
![query](https://img-blog.csdnimg.cn/20200102215435919.png)

修改信息：
![在这里插入图片描述](https://img-blog.csdnimg.cn/20200102215414251.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzQ0ODI0NDAw,size_16,color_FFFFFF,t_70)


六、总结。

时间有限，本次未能结合java bean以及servlet 知识进行jsp web设计。(课下继续学习)
本次设计过程中加深了对课本前六章的理解，本人对Java语言感兴趣，相信本次掌握的jsp知识，若用到基于jsp的后端设计，对自身专业发展有益。
过程中也帮助了好多同学一些基础问题，完成最完美的界面。
