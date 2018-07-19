rspecify=function(query,...){
  args <- as.list(match.call())
  filters <- map(args[3:length(args)],eval)
  query <- str_c(query,
                 "\nWHERE\n{",
                 str_c(filters,".\n",collapse=""),
                 "}#endOfWhere")
  return(query)
}