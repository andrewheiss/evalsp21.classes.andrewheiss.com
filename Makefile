.PHONY: build-and-serve clean-public rmd rmd-serve
PUBLIC_DIR = public

build-and-serve:
	hugo && hugo server

rmd:
	Rscript -e "blogdown::build_site()"

rmd-serve: rmd
	hugo server

clean-public:
	rm -rf $(PUBLIC_DIR)
