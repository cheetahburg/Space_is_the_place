# Space_is_the_place
a multiplayer online game

《超频》
----
多人在线网页游戏

/Java_dbServer
----
数据服务端:Java 使用SpringBoot框架开发，编写http接口供客户端和游戏服务端访问调用。功能包括登陆注册，获取装备信息等与数据库的交互，以及自动监听在线的游戏房间数量和状态信息，使玩家能够看到并选择游戏房间

/gameServer
----
游戏服务端:GML(GameMaker引擎集成的一种开发语言)实现碰撞检测，状态同步等功能。利用socket连接与不同的客户端之间传送数据。

/client
----
网页客户端:GML实现了简单的照明系统，战斗系统，聊天系统，用户界面

/Dump20210302_1.sql
----
数据库建表脚本
