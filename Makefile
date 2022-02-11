all:
	$(MAKE) -C doc html
	mkdir -p _site
	rm -f _site/doc _site/slides
	cd _site && ln -s ../doc/_build/html doc
	git submodule update --init reveal.js
	mkdir _site/slides
	cd _site/slides && ln -s ../reveal.js/* .
	cd _site/slides && rm index.html && \
		ln -s ../../slides/index.html .
	cd _site && ln -s ../index.html index.html
