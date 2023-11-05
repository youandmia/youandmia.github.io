SHELL=/usr/bin/env bash

install:
	rbenv local 3.1.2
	gem install bundler webrick
	bundle install
run:
	bundle exec jekyll serve

resize_images:
	@for f in `ls album`; do convert album/$${f} -resize 3145728@ photos/$${f}; done
	@for f in `ls album`; do convert album/$${f} -resize 76800@ thumbnails/$${f}; done
