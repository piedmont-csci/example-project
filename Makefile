all:
	$(MAKE) -C doc html
	mkdir -p _site
	rm -f _site/doc _site/slides
	cd _site && ln -s ../doc/_build/html doc
	git submodule update --init reveal.js
	cd _site && ln -s ../reveal.js slides
	ls _site/slides
