#Section 1: library packages
#install.packages("magrittr")
library(magrittr)


#Section 2: self-defined functions
standrad_deviation <- function(input_vector){
  sum_square <- 0
  for (i in input_vector){
    sum_square <- sum_square + (i - mean(input_vector))^2
  }
  (sum_square/(length(input_vector) - 1)) %>%
    sqrt() %>%
    return()
}


#Section 3: inputs and parameters
input_test <- ceiling(runif(100, min = 1, max = 100))


#Section 4: function calls
#驗證使用自訂函數是否與使用內建函數 sd() 結果相同。
sd(input_test)
standrad_deviation(input_test)