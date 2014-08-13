add2 <- function(x, y) {
    x + y
}

above <- function(a,cutoff) {
    a[a > cutoff]
}

dfmeans <- function(d) {
    for (col in colnames(d)) {
        if (class(d[["col"]]) != "character" & class(d[["col"]]) != "logical") {
            m <- mean(d[[col]], na.rm=T)
            
            dname <- deparse(substitute(d))
            output <- paste(dname, "$", col, " mean: ", m, sep="")
            print(output)
        }
    }
}

colmeans <- function(t, na.rm = TRUE) {
    nc <- ncol(t)
    means <- numeric(nc)
    for (i in 1:nc) {
        means[i] <- mean(t[, i], na.rm = na.rm)
    }
    
    # Assign column names to values if present
    if (!is.null(colnames(t))) {
        names(means) <- colnames(t)
    }
    else {
        names(means) <- paste("col", 1:nc, sep = "")
    }
    
    means
}


