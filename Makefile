.PHONY: install build deploy serve


install:
	gem install bundler jekyll
	gem install s3_website


build:
	jekyll build


deploy: build
	s3_website push


serve:
	jekyll serve

