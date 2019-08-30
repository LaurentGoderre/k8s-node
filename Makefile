build:
	for script in ci/*; do source $$script; done \
	&& export OCTOPUS_NAME=demo \
	&& export CI_APPLICATION_REPOSITORY=k8s-node \
	&& export IMAGE_REPOSITORY=$$CI_APPLICATION_REPOSITORY \
	&& export DOCKER_TAG=$$VERSION \
	&& export IMAGE_TAG=$$DOCKER_TAG \
	&& export INGRESS_HOST="helloworld.info" \
	&& build \
	&& eval "echo \"$$(sed -e 's|#{|$${|g' octopus.yaml)\"" > values.yaml \
	&& echo "Deploying version $$VERSION" \
	&& helm upgrade -i $$OCTOPUS_NAME --values values.yaml helm/node-server
