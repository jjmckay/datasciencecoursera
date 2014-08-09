rn <- function() {
  x <- rnorm(100)
  mean(x)
}

rn2 <-function(a) {
  a + rnorm(length(a))
}