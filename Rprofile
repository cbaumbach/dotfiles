local({
    r <- getOption("repos")
    r["CRAN"] <- "http://cloud.r-project.org"
    options(repos=r)
})

# Add user functions to the search path just after the user's
# workspace thereby ensuring that they survive an rm(list = ls()).
# We use .First.sys and not .First since in R's ?Startup sequence
# .First.sys runs after .First and attaches R's default packages which
# could shadow user functions.  Defining our own version of .First.sys
# in .Rprofile places it into the user's workspace and thus shadows
# the default version in R's base package.  We call the shadowed
# version explicitly and then add the user functions to the search
# path.  Later changes to the search path can still cause shadowing.
.First.sys <- function() {
    base::.First.sys()

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

    user <- list(less = less, vi = vi)
    attach(user)
}
