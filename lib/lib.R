require("jsonlite") #curl

dataProvider <- function(provider = "binance") {
  
  fileName <- paste0("lib/",provider,".R")
  
  if (file.exists(fileName)) {
    
    source(fileName)
    
  } else {
    
    cat("Selected provider is not valid.\n")
    
  }

}