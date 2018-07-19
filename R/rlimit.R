rlimit <- function(query,n){
  query <- str_c(query,
                 "\nLIMIT ",n)
  return(query)
}