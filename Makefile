all: web

publish:	web
	./_publish.sh

web:	css
	jekyll build -q

css: lint assets/themes/bootstrap-3/css/style.css

lint:
	bundle exec scss-lint 

assets/themes/bootstrap-3/css/style.css: assets/themes/bootstrap-3/css/style.scss
	sass --style compressed  $< $@

