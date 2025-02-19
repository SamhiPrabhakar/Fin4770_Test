#Portfolio Exersize HOMEWORK
#Subset the 
portfolio <- list(
  stocks = c(AAPL = 150, TSLA = 680), 
  bonds = c(TBOND = 1000),
  cash = 5000,
  brokerage = 'Robinhood'
)
portfolio[[1]]
portfolio$cash
portfolio[c("stocks","cash")]
portfolio[2]
portfolio$brokerage <- NULL

#solve using pipe operator
result_procedural <- sqrt(2^3)
result_procedural

cube <- function(x){
  x^3
}
result_pipe <- 2 |> cube() |> sqrt()
print(result_pipe)

