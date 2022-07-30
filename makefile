docker-build:
	@docker build --tag qkrgustkd15/github-action-and-github-container-registry:latest .
docker-tag:
	@docker tag qkrgustkd15/github-action-and-github-container-registry:latest ghcr.io/dev-hyunsang/github-action-and-github-container-registry:latest
docker-push:
	@docker push ghcr.io/dev-hyunsang/github-action-and-github-container-registry:latest