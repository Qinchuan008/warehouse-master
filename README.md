## 系统名称 
仓库管理系统 warehouse 
### 系统概要
仓库管理系统总共分为两个大的模块，分别是系统模块和业务模块。其中系统模块和业务模块底下又有其子模块。
### 功能模块
#### 一、业务模块
##### 1、客户管理
###### 客户列表
###### 客户分页和模糊查询
###### 客户添加、修改、删除、批量删除
##### 2、供应商管理
###### 供应商列表
###### 供应商分页和模糊查询
###### 供应商添加、修改、删除、批量删除
##### 3、商品管理
###### 商品列表
###### 商品分页和模糊查询
###### 商品添加、修改、删除、商品图片的上传
##### 4、商品进货管理
###### 商品进货列表
###### 商品进货分页和模糊查询
###### 商品进货添加、修改、删除、商品退货
##### 5、商品退货管理
###### 商品退货列表
###### 商品退货分页和模糊查询
###### 商品退货删除
##### 6、商品销售管理
###### 商品销售列表
###### 商品销售分页和模糊查询
###### 商品销售添加、修改、删除、商品销售退货
##### 7、商品销售退货管理
###### 商品销售退货列表
###### 商品销售退货分页和模糊查询
###### 商品销售退货删除
#### 二、系统模块
##### 1、用户登陆
###### 校验用户名、密码以及验证码
###### 登陆成功将登陆信息写入登陆日志
###### 未登录直接访问服务器资源进行拦截
##### 2、菜单管理
###### 全查询菜单和根据左边的树查询不同菜单
###### 菜单的添加、修改、删除
##### 3、角色管理
###### 全查询角色和模糊查询
###### 角色的添加、修改、删除以及给角色分配权限
##### 4、用户管理
###### 全查询用户和模糊查询
###### 用户的添加、修改、删除、重置密码以及给用户分配角色
##### 5、部门管理
###### 全查询部门、模糊查询以及根据左边的树查询不同的部门
###### 部门的添加、修改、删除

### 技术选型
#### 后台技术选型
* SpringBoot
* Shiro
* MybatisPlus
#### 前端技术选型
* LayUI、DTree

### 开发环境
* 操作系统：Windows 10
* 编程语言：Java
* 开发工具：IDEA、Navicat、Git
* 项目构建：Maven 3.5.2
* 服务器：Tomcat 8.5
* 数据库：MySQL 5.0
* 代码托管平台：GitHub
* 图片素材默认存储在D盘的upload文件夹，下载：https://wwhl.lanzouw.com/b04jx7lkf 密码:fb06，下载之后解压到D盘即可
* 数据库的sql文件保存在项目的根目录，默认数据库用户名：root，密码：123465
### 预览效果
登陆页面
![](https://github.com/Qinchuan008/warehouse-master/blob/master/src/main/resources/static/images/login.png)
部门管理
![](https://github.com/Qinchuan008/warehouse-master/blob/master/src/main/resources/static/images/dept.png)
菜单管理
![](https://github.com/Qinchuan008/warehouse-master/blob/master/src/main/resources/static/images/menu.png)
权限管理
![](https://github.com/Qinchuan008/warehouse-master/blob/master/src/main/resources/static/images/permission.png)
角色管理
![](https://github.com/Qinchuan008/warehouse-master/blob/master/src/main/resources/static/images/role.png)
用户管理
![](https://github.com/Qinchuan008/warehouse-master/blob/master/src/main/resources/static/images/user.png)
登陆日志管理
![](https://github.com/Qinchuan008/warehouse-master/blob/master/src/main/resources/static/images/loginfo.png)
系统公告管理
![](https://github.com/Qinchuan008/warehouse-master/blob/master/src/main/resources/static/images/notice.png)
缓存管理
![](https://github.com/Qinchuan008/warehouse-master/blob/master/src/main/resources/static/images/cache.png)
客户管理
![](https://github.com/Qinchuan008/warehouse-master/blob/master/src/main/resources/static/images/customer.png)
供应商管理
![](https://github.com/Qinchuan008/warehouse-master/blob/master/src/main/resources/static/images/provider.png)
商品管理
![](https://github.com/Qinchuan008/warehouse-master/blob/master/src/main/resources/static/images/goods.png)
商品进货管理
![](https://github.com/Qinchuan008/warehouse-master/blob/master/src/main/resources/static/images/inport.png)
商品退货管理
![](https://github.com/Qinchuan008/warehouse-master/blob/master/src/main/resources/static/images/output.png)
商品销售管理
![](https://github.com/Qinchuan008/warehouse-master/blob/master/src/main/resources/static/images/sales.png)
商品销售退货管理
![](https://github.com/Qinchuan008/warehouse-master/blob/master/src/main/resources/static/images/salesback.png)

### 讨论
有问题联系我QQ：1572294593，请注明来意，伸手党勿加~
