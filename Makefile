NAME=meetwalter/ruby-powered-service
VERSION=$(shell cat VERSION)

.PHONY: all

all:
	docker build -t $(NAME):$(VERSION) .

bump:
	docker tag -f $(NAME):latest $(NAME):$(VERSION)
	git tag -d $(VERSION) 2>&1 1>/dev/null || :
	git tag $(VERSION)

push: all bump
	docker push $(NAME)
