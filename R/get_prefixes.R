
get_prefixes <- function(type="wiki"){
  tib=tibble(
    prefix=c("wd",
             "wds",
             "wdv",
             "wdt",
             "wikibase",
             "p",
             "ps",
             "pq",
             "rdfs",
             "bd"),
    url=c("http://www.wikidata.org/entity/",
          "http://www.wikidata.org/entity/statement/",
          "http://www.wikidata.org/value/",
          "http://www.wikidata.org/prop/direct/",
          "http://wikiba.se/ontology#",
          "http://www.wikidata.org/prop/",
          "http://www.wikidata.org/prop/statement/",
          "http://www.wikidata.org/prop/qualifier/",
          "http://www.w3.org/2000/01/rdf-schema#",
          "http://www.bigdata.com/rdf#"))
  return(tib)
}