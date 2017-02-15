#Section 1: library packages
#none

#Section 2: self-defined functions
exchange.sort.asc <- function(input_vector, decreasing = FALSE) {
  if (decreasing == FALSE){
    for (i in 1:(length(input_vector) - 1)) {
      for (j in (i + 1):length(input_vector)) {
        if (input_vector[i] > input_vector[j]) {
          temp_input <- input_vector[i]
          input_vector[i] <- input_vector[j]
          input_vector[j] <- temp_input
        }
      }
    }
    return(input_vector)
  } else {
    for (i in 1:(length(input_vector) - 1)) {
      for (j in (i + 1):length(input_vector)) {
        if (input_vector[i] < input_vector[j]) {
          temp_input <- input_vector[i]
          input_vector[i] <- input_vector[j]
          input_vector[j] <- temp_input
        }
      }
    }
    return(input_vector)
  }
  }

#Section 3: inputs and parameters
input_vector <- ceiling(runif(10) * 100)


#Section 4: function calls
exchange.sort.asc(input_vector, decreasing = FALSE) #decreasing = FALSE, Ascending
exchange.sort.asc(input_vector, decreasing = TRUE) #decreasing = TRUE, Descending 


