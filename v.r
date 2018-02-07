#!/usr/bin/r -vi
# Rscript --vanilla

eprintf <- function(...) cat(sprintf(...), sep='', file=stderr())

prompt.read <- function(prompt="\n[hit enter to continue]: ") {
    eprintf("%s", prompt)
    invisible(readline())
}

demo.me <- function(title, expr.str) {
    # print expression title (neatly underlined)
    underline.str <- paste0(rep('=', nchar(title)), collapse='')
    eprintf("%s\n%s\n", title, underline.str)

    eprintf('R> %s', expr.str)
    prompt.read("\n[Enter to execute]: ")

    # evaluate/execute the expression:
    eval(parse(text=expr.str))

    # vertical space and wait for user input
    prompt.read("\n\n")
}

#
# -- main
#
# Set default margins for plotting (only slightly different from the default)
#
par(mar=c(5, 5, 4, 2))
x11()

demo.me("Read the data",
        'd <<- read.csv(file="v.shuf.txt",
                        sep="\t", header=F,
                        colClasses=c("numeric", "numeric", "numeric")
        )'
)

demo.me("Look at the data",
        'head(d, n=20)'
)

demo.me("edit the data",
        'edit(d)'
)

demo.me("Summarize the data",
        'summary(d)'
)

demo.me("R-plot the data",
        'plot(d)'
)

demo.me("finish",
        'cat("finishing...\n", sep="")'
)

