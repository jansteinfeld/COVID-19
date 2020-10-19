
setwd("P:/Documents/Eigene_DATEN/private_Projekte/corona")
data <- openxlsx::read.xlsx("corona.xlsx", sheet = 1)
data$Datum <- openxlsx::convertToDate(data$Datum)

data$Datum <- as.Date(data$Datum)

https://info.gesundheitsministerium.at/data/Trend.js
https://info.gesundheitsministerium.at/data/Bezirke.js
https://info.gesundheitsministerium.at//data/Bundesland.js
https://info.gesundheitsministerium.at/
https://www.sozialministerium.at/Informationen-zum-Coronavirus/Neuartiges-Coronavirus-(2019-nCov).html
https://www.derstandard.at/story/2000115810293/aktuelle-zahlen-zum-coronavirus

# forecast
# usdata <- d %>%
# filter(d$country == "Austria" & d$cum_confirm>1) %>%
# select(time,cum_confirm)

# library(forecast)
# case <- ts(data$Anzahl, start=1, frequency = 1)
# fit <- tslm(log(case) ~ trend)
# fc <- forecast(fit, h=4)
# fc
# exp(fc[,1])

# plot(fc)


   
projSimple<-function(rawN, rawTime, inWindow=20){
  nn <- length(rawN)
  ss <- (nn-inWindow+1):nn
  x <- c(rawTime[ss], rawTime[nn]+1:inWindow)
  lnN <- log(rawN[ss])
  lnN[is.infinite(lnN)]<-NA
  tIn <- rawTime[ss]
  mFit <- lm(lnN~tIn)
  extFit <- predict(mFit, newdata = list(tIn = x), interval = "confidence")
  y <- exp(extFit)
  list(x=x, y=y)
}

tsSub <- function(x, subset){
  xSub<-x[subset, dateCols(x)]
  colSums(xSub)
}

nowThen <- format(as.integer(c(tail(data$Anzahl, 1), tail(lDat$y[,"lwr"],1), tail(lDat$y[,"upr"],1))), big.mark = ",")
nowThen <- c(nowThen[1], paste(nowThen[2], "-", nowThen[3]))
dim(nowThen) <- c(1, 2)
colnames(nowThen)<-c("Now", "In 10 days (min-max)")
nowThen
  
lDat <- projSimple(data$Anzahl, data$Datum)
  yMax <- max(c(lDat$y[,"fit"]), na.rm = TRUE)
  yTxt <- "Confirmed active cases"
  plot(data$Anzahl~data$Datum, 
        xlim = c(min(data$Datum), max(lDat$x)),
        ylim = c(0, yMax),
        pch = 19, 
        bty = "u", 
        xlab = "Date", 
        ylab = yTxt,
        main = "Österreich")
  axis(side = 4)
  lines(lDat$y[, "fit"]~lDat$x)
  lines(lDat$y[, "lwr"]~lDat$x, lty = 2)
  lines(lDat$y[, "upr"]~lDat$x, lty = 2)





library('remotes')
remotes::install_github("GuangchuangYu/nCov2019", dependencies = TRUE)
library('nCov2019')
x <- get_nCov2019(lang = 'en')


y <- load_nCov2019(lang = 'en')
d <- y['Anhui']
ggplot(d, aes(time, as.numeric(cum_confirm), 
    group = city, color = city)) +
  geom_point() + geom_line() + 
  geom_label_repel(aes(label = city), 
    data = d[d$time == time(y), ], hjust = 1) +
  theme_minimal(base_size = 14) + theme(legend.position = 'none') + 
  scale_x_date(date_labels = "%Y-%m-%d") + xlab(NULL) + ylab(NULL) + 
  theme(axis.text.x = element_text(hjust = 1)) +
  labs(title = "Growth curve of confirms in Anhui Province, China")
