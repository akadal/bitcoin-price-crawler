# run to install jsonlite and curl packages:
# install.packages(c("jsonlite","curl"))

# require the main router lib:

source("lib/lib.R")

# define provider. Just Binance is available right now.

dataProvider("binance")

####################################
# DATA COLLECTING
####################################

# Get the price of any cryptocurrency. Use symbol of it with the base currency. 
# For example if the currency is BTC and them base is USDT (Tether) then you can use BTCUDST.

price <- getPrice("BTCUSDT")

# Get the current trading point of cryptocurrency with given base currency.

getTradePrice("BTCUSDT")

# Get the depth. Parameters: symbol, limit (default: 100)

depthMatrix <- depth("BTCUSDT")

# Get the trades list. Parameters: symbol, limit (default: 100)

tradesMatrix <- trades("BTCUSDT")

# Get the candle sticks of a cryptocurrency placed on its graph.
# Parameters: symbol, interval, limit (default: 500), startTime (optional), endTime (optional)

candlesticks <- getCandlesticks("BTCUDST", "1h")
