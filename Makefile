all:
	$(MAKE) -C doc html
	mkdir -p _site
	cd _site && ln -s ../doc/_build/html doc
	ls _site
	ls _site/doc
