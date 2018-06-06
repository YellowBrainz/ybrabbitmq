NAME=rabbitmq
DNAME=RabbitMQ
RMQ_USER=rabbitx
MGT_PORT=8888
RMQ_PORT=5672
RMQ_ADMINPORT=15672
VERSION=latest
FULLDOCKERNAME=$(NAME):$(VERSION)

rabbit:
	docker run -d --name $(DNAME) -p $(RMQ_PORT):$(RMQ_PORT) -p $(MGT_PORT):$(RMQ_ADMINPORT) -e RABBITMQ_DEFAULT_USER=$(RMQ_USER) -e RABBITMQ_DEFAULT_PASS=$(RMQ_SECRET) $(NAME):$(VERSION)
	docker exec -ti RabbitMQ rabbitmq-plugins enable rabbitmq_management

stop:
	docker stop $(DNAME)

start:
	docker start $(DNAME)

clean:
	docker rm $(DNAME)