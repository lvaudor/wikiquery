rprefix=function(tib,endpoint="wikidata"){
  if(endpoint=="wikidata"){root="http://www.wikidata.org/"}
  prefixes=get_prefixes() %>% 
    mutate(prefix=str_c(prefix,":"))
  replace_root=function(x){
    for (i in 1:nrow(prefixes)){
       x=str_replace(x,prefixes$url[i],prefixes$prefix[i])
    }
    return(x)
  }
  tib <-mutate_all(tib,.fun="replace_root")
}