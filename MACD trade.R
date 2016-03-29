library(quantmod)
#SCHA Small Cap 1
#RYE Energy
#GXC China 1
#RSP SP 500
#FB
#NVDA
#NOC
#Short TSLA, YHOO, AAPL
#quantopian.com
#octopus investments
#robinhood

getSymbols("AMZN",src="google")


chartSeries(AMZN,
            type = c("auto"), 
            subset='last 8 weeks', 
            theme=chartTheme('black', up.col='green',dn.col='red'),
            line.type = "1",
            show.grid = TRUE,
            major.ticks='auto', minor.ticks=TRUE)


addSMI(n=13,slow=25,fast=2,signal=9,ma.type="EMA")
addMACD()

addBBands(n=20, sd=2, maType="SMA", draw='bands', on=-1)

