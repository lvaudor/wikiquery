get_all_WD_properties <- function(language){
  tib <- rselect("property","propertyLabel","propertyDescription") %>% 
    rspecify("?property a wikibase:Property") %>% 
    rlabel(language) %>% 
    query_wikidata() %>% 
    rprefix()
  return(tib)
}