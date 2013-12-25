

#storm-helper
this project include some useful sh file or java programme.

##storm 
运行 setup/setup.sh即可部署安装storm，现在对应版本是storm0.8.0。
会要求sudo输入密码。

Prepare:需要sudo权限，安装ZEROMQ支持

    the user must be a sudoer and sudo without passwd
    java is 1.6
    python is 2.6+
    hint:Before you setup storm you should have an sh to scp file to all host.

Doing:

    the storm will steup in ~/storm
    storm manage sh

脚本会自动添加以下部分到bash_profile中。

    if [ -f ~/.storm_profile ]; then
      . ~/.storm_profile
    fi

##ext

ext中包括安装辅助storm的数据源的消息队列的脚本(ucmq，kafka)

###kafka

运行install_kafka.sh，下载安装 kafka


修改server.properties 

    #修改配置文件中的blockid,不同机器不同，跟zookeeperid一样。
    broker.id=0    
    
    #ZK连接
    zookeeper.connection=h1:2181,h2:2181,h3:2181

修改log4j

    log4j.rootLogger=INFO,kafkaAppender

启动服务器

    bin/kafka-server-start.sh config/server.properties &
    
测试：

    #创建topic
    bin/kafka-create-topic.sh --zookeeper localhost:2181 --replica 2 --partition 1 --topic t1
    #列出topic
    bin/kafka-list-topic.sh --zookeeper localhost:2181
    #创建消息
    bin/kafka-console-producer.sh --broker-list localhost:9092 --topic t1
    #消化消息
    bin/kafka-console-consumer.sh --zookeeper localhost:2181 --from-beginning --topic t1
    
##example