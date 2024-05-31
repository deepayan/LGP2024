
Rcpp::sourceCpp('perfect.cpp')

k = 1
while (TRUE) {
    cat("\r", k)
    if (aliquot_sum(k) == k) cat("\n")
    k <- k + 1
}

