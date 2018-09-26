docker run -d \
--restart always \
--name rabbitmq \
-p 1883:1883 \
-p 15671:15671 \
-p 15672:15672 \
-p 15675:15675 \
-p 15670:15670 \
rabbitmq