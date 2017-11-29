all: web

publish:	web
	./_publish.sh

web:	css
	bundle exec jekyll build -q

css: lint assets/themes/bootstrap-3/css/style.css assets/themes/bootstrap-3/bootstrap/css/bs-sticky-footer.min.css

lint:
	# bundle exec scss-lint 

assets/themes/bootstrap-3/css/style.css: assets/themes/bootstrap-3/css/style.scss
	sass --style compressed  $< $@

assets/themes/bootstrap-3/bootstrap/css/bs-sticky-footer.min.css: assets/themes/bootstrap-3/bootstrap/css/bs-sticky-footer.scss
	sass --style compressed $< $@

