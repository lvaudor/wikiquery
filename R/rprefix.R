rprefix=function(tib,endpoint="wikidata"){
  if(endpoint=="wikidata"){root="http://www.wikidata.org/"}
  replace_root=function(x){
    x <-  x %>% 
      str_replace(str_c(root,"prop.*/"),"wdt:") %>% 
      str_replace(str_c(root,"entity/"),"wd:")
    return(x)
  }
  tib <-mutate_all(tib,.fun="replace_root")
}