rselect=function(...){
  args <- as.list(match.call())
  vars <- args[2:length(args)]
  query <- str_c("SELECT",
                 str_c(str_c(" ?",vars),collapse=""))
  return(query)
}