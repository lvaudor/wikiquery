rfilter=function(query,condition,language="en"){
  query <- str_c(str_replace(query,"\\}#endOfWhere",""),
                 "\nFILTER(",condition,").\n}#endOfWhere")
  return(query)
}