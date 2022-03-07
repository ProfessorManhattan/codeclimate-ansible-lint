.PHONY: image test

IMAGE_NAME ?= codeclimate/codeclimate-ansible-lint

SLIM_IMAGE_NAME ?= codeclimate/codeclimate-ansible-lint:slim

image:
	docker build --rm -t $(IMAGE_NAME) .

slim: image
	docker-slim build --tag $(SLIM_IMAGE_NAME) --http-probe=false --exec 'ansible-lint --version' --preserve-path-file 'paths.txt' $(IMAGE_NAME) && prettier --write slim.report.json

test: slim
	container-structure-test test --image $(IMAGE_NAME) --config tests/container-test-config.yaml && container-structure-test test --image $(SLIM_IMAGE_NAME) --config tests/container-test-config.yaml
