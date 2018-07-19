rspecify=function(query,...){
  args <- as.list(match.call())# bricolage revoir tidyeval
  filters <- map(args[3:length(args)],eval,envir=environment())
  query <- str_c(query,
                 "\nWHERE\n{",
                 str_c(filters,".\n",collapse=""),
                 "}#endOfWhere")
  return(query)
}
