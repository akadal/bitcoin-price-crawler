baseUrl <- "https://api.binance.com/api/v3/"

getPrice <- function(symbol) {
  
  path <- paste0(baseUrl,'ticker/price?symbol=',symbol)
  
  theData <- fromJSON(path)
  
  return(theData$price)
  
}

getTradePrice <- function(symbol) {
  
  path <- paste0(baseUrl,'ticker/bookTicker?symbol=',symbol)
  
  theData <- fromJSON(path)
  
  return(theData)
  
}

depth <- function(symbol, limit = 100) {
  
  path <- paste0(baseUrl,"depth?symbol=",symbol,"&limit=",limit)
  
  theData <- fromJSON(path)
  
  return(theData)
  
}

trades <- function(symbol, limit = 100) {
  
  path <- paste0(baseUrl,"trades?symbol=",symbol,"&limit=",limit)
  
  theData <- fromJSON(path)
  
  return(theData)
  
}

getCandlesticks <- function(symbol, interval, limit = 500, startTime = NULL, endTime = NULL) {
  
  if (is.null(startTime) || is.null(endTime)) {
    
      path <- paste0(baseUrl,"klines?symbol=",symbol,"&limit=",limit,"&interval=",interval)
    
  } else {
    
    path <- paste0(baseUrl,"klines?symbol=",symbol,"&limit=",limit,"&interval=",interval,
                   "&startTime=",startTime,"&endTime=",endTime)
    
  }
  
  theData <- fromJSON(path)
  
  return(theData)
  
}