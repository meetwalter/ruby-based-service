NAME=meetwalter/ruby-powered-web-service
VERSION=$(shell cat VERSION)

.PHONY: all

all:
	docker build -t $(NAME):$(VERSION) .

bump:
	docker tag -f $(NAME):latest $(NAME):$(VERSION)
	git tag $(VERSION)

push: all bump
	docker push $(NAME)
