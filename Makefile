.PHONY: install build deploy serve require_clean_git


install:
	gem install bundler jekyll
	gem install s3_website


build:
	jekyll build


deploy: require_clean_git build
	s3_website push


serve:
	jekyll serve

require_clean_git:
	git diff-index --quiet HEAD -- # Git repo is not clean
