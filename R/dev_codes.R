library(devtools)

x <- "alfa,bravo,charlie,delta"
strsplit(x, split = ",")

strsplit1 <- function(x, split) {
  strsplit(x, split = split)[[1]]
}


use_r("strsplit1")

load_all()

strsplit1(x, split = ",")
check()

use_mit_license()
document()
?strsplit1

check()
install()

library(regexcite)
strsplit1(x, split = ",")

use_testthat()

use_test("strsplit1")
test()

use_package("stringr")

str_split_one <- function(string, pattern, n = Inf) {
  stopifnot(is.character(string), length(string) <= 1)
  if (length(string) == 1) {
    stringr::str_split(string = string, pattern = pattern, n = n)[[1]]
  } else {
    character()
  }
}

rename_files("strsplit1", "str_split_one")

document()
load_all()

str_split_one("a, b, c", pattern = ", ")

use_github()
usethis::use_git_remote("origin", url = NULL, overwrite = TRUE)

use_github()

use_readme_rmd()

build_readme()

check()
install()
























