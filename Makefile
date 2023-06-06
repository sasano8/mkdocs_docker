image-build:
	@docker build ./ -t mkdocs_docker

doc-build:
	@docker run -e ENABLE_PDF_EXPORT=1 --rm -it -v ${PWD}:/docs mkdocs_docker build
