all:
	$(MAKE) -C doc html
	mkdir -p _site
	rm -rf _site/doc _site/slides
	cd _site && ln -s ../doc/_build/html doc
	git submodule update --init reveal.js
	cp -r reveal.js _site/slides
	cd _site/slides && rm index.html && \
		ln -s ../../slides/index.html .
	cd _site && ln -s ../index.html index.html
