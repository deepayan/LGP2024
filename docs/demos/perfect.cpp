#include <Rcpp.h>

// [[Rcpp::export]]

int aliquot_sum(int n) {
    int s = 1;
    int i = 2;
    if (n == 1) return 1;
    while (i * i < n) {
        if (n % i == 0) s = s + i + (n / i);
        i = i + 1;
    }
    return s;
}



