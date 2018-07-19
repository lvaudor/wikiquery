get_WD_item_properties <-function(item,language="en",limit=50){
  spec=str_c(item, " ?property ?object")
  tib <- rselect("property","object","objectLabel") %>% 
    rspecify(spec) %>% 
    rlabel(language) %>%
    rlimit(limit) %>% 
    query_wikidata() %>%
    rprefix() %>% 
    left_join(get_all_WD_properties(language), by="property")
}
