search_WD=function(string, language="en", what="itemLabel", partial=FALSE,limit=10){
  query <- rselect("item","itemLabel", "itemDescription") %>% 
    rspecify("?item rdfs:label ?itemLabel") %>% 
    rspecify("?item schema:description ?itemDescription")
  if(partial){
    query <- query %>% 
      rfilter(condition=str_c('REGEX(?',
                              what,
                              ',"',string,'")'))
  }else{
    query <- query %>% 
      rfilter(condition=str_c('?',
                              what,
                              '="',
                              string,
                              '"@',
                              language))
  }
  query <- query %>%
    rfilter(str_c('LANG(?itemDescription)="',language,'"')) %>% 
    rlimit(limit)
  tib <-  query %>% query_wikidata()
  return(tib)
}