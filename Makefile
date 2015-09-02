.PHONY: build

build: hugo-image
	docker run --rm -v `pwd`:/hugo hugo -t hyde --buildDrafts

serve: hugo-image
	docker run --rm -p 1313:1313 -v `pwd`:/hugo hugo server --bind=0.0.0.0 -t hyde --buildDrafts

hugo-image:
	docker build -t hugo .