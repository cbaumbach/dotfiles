local({
    r <- getOption("repos")
    r["CRAN"] <- "http://cloud.r-project.org"
    options(repos=r)
})


# Attach custom utility functions just after the global environment.
#
# .First can't be used because R's ?Startup sequence follows it with a
# call to base::.First.sys which attaches more packages, in particular
# package:utils which would shadow our vi function.

.First.sys <- function() {
    base::.First.sys()
    .First.cb()
}

.First.cb <- function() {

    less <- function(object, ...) {
        page(object, method = "print", width = 9999, ...)
    }

    vi_file <- NULL
    vi <- function(file = vi_file) {
        if (!is.character(file)) {
            stop("Which file to edit? Pass path at least once.")
        } else if (!file.exists(file) && !file.create(file)) {
            stop("Failed to create file: ", file)
        }
        vi_file <<- file
        edit(file = file, editor = "vim")
    }

    utils.cb <- list(less = less, vi = vi)
    attach(utils.cb)
}
