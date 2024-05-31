

aliquot_sum <- function(n) {
    if (n == 1)
        return(1)
    s = 1
    i = 2
    while(i * i < n) {
        if (n %% i == 0)
            s = s + i + (n %/% i)
        i = i + 1
    }
    s
}

k = 1
while (TRUE) {
    cat("\r", k)
    if (aliquot_sum(k) == k) cat("\n")
    k <- k + 1
}



