df <- read.table("diari-xxx.csv",header = TRUE,sep = ",")
df
J<-as.journal(df)




library(PMwR)
amount = c(1, 2, -2, 3)
price = c(10,12,14,2)
timestamp = c(2019-01-17,01/01/2019,01/01/2019,01/01/2019)
timestamp<-as.Date(timestamp)
amount
price
timestamp

J
position(J)
tmp <- orgutils::readOrg(text = "
|       DATE | WHAT                     | FX  | AMOUNT | COMMENT         |
|------------+--------------------------+-----+--------+-----------------|
| 2017-07-01 | Cash                     | EUR |   4500 | initial balance |
| 2017-07-01 | Cash                     | CHF |      0 | initial balance |
| 2017-08-15 | Expenses::shopping       | EUR |     45 |                 |
| 2017-07-31 | Expenses::rent           | EUR |   1300 |                 |
| 2017-07-15 | Cash                     | EUR |  -1200 |                 |
| 2017-07-15 | Cash                     | CHF |   1400 |                 |
| 2017-07-15 | Expenses::commission     | EUR |    -10 |                 |
| 2017-08-15 | Expenses::holidays:hotel | CHF |    900 |                 |
| 2017-08-15 | Expenses::meals          | CHF |     70 |                 |
| 2017-08-15 | Expenses::shopping       | CHF |    170 |                 |
| 2017-08-31 | Expenses::rent           | EUR |   1300 |                 |
")

names(tmp) <- c("timestamp", "account",
                "instrument", "amount", "comment")
tmp$timestamp <- as.Date(tmp$timestamp)
J <- as.journal(tmp)
J
Sys.setenv(LANGUAGE = "en")
