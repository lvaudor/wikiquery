get_all_WD_properties <- function(language){
  tib1 <- rselect("property","propertyLabel","propertyDescription") %>% 
    rspecify("?property a owl:ObjectProperty") %>% 
    rlabel(language) %>% 
    query_wikidata() 
  tib2 <- rselect("property","propertyLabel","propertyDescription") %>% 
    rspecify("?property a wikibase:Property") %>% 
    rlabel(language) %>% 
    query_wikidata()
  tib=bind_rows(tib1,tib2) %>% 
    rprefix() %>% 
    distinct()
  return(tib)
}