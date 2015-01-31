all: web

publish:	web
	./_publish.sh

web:	css
	jekyll build

css: assets/themes/bootstrap-3/css/style.css

assets/themes/bootstrap-3/css/style.css: assets/themes/bootstrap-3/css/style.scss
	sass --style compressed --sourcemap=none $< $@

