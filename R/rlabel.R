rlabel=function(query,language){
  query <- str_c(str_replace(query,"\\}#endOfWhere",""),
                 "\nSERVICE wikibase:label {bd:serviceParam wikibase:language \"",language,"\".}",
                 "}#endOfWhere")
  return(query)
}