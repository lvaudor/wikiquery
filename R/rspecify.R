rspecify=function(query,spec){
  spec=str_c(spec,".\n",collapse="")
  if(!str_detect(query,"endOfWhere")){
    query <- str_c(query,
                   "\nWHERE\n{",
                   spec,
                   "}#endOfWhere")
  }else{
    query <- str_replace(query,
                         "\\}#endOfWhere",
                         str_c(spec,"}#endOfWhere"))
  }
  return(query)
}
