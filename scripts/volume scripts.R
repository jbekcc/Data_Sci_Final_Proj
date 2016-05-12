library(ggplot2)

pray_mizzou_volume <- read.csv("~/Desktop/pray_mizzou_volume.csv")

qplot(pray_mizzou_volume$theWeek, pray_mizzou_volume$counter, geom="smooth")

pfm_2015data <- subset(pray_mizzou_volume, theYear == 2015)
pfm_2016data <- subset(pray_mizzou_volume, theYear == 2016)

qplot(pfm_2015data$theWeek, pfm_2015data$counter, geom="smooth", xlab = "Week", ylab = "Count")
qplot(pfm_2016data$theWeek, pfm_2016data$counter, geom="smooth", xlab = "Week", ylab = "Count")

hashtag_vol <- read.csv("~/Desktop/hashtag_vol.csv")
JapanData <- subset(hashtag_vol, JapanCount>0)
MexicoData <- subset(hashtag_vol, MexicoCount>0)
LebanonData <- subset(hashtag_vol, LebanonCount>0)
BeirutData <- subset(hashtag_vol, BeirutCount>0)
ParisData <- subset(hashtag_vol, ParisCount>0)

data_2015 <- subset(hashtag_vol, theYear == 2015)
data_2015$Date <- paste( data_2015$theWeek , data_2015$theDay , sep = "-" )
data_2015$Date <- paste( data_2015$theYear , data_2015$theWeek , sep = "-" )

hashtag_vol$Date <- paste( hashtag_vol$theYear , hashtag_vol$theWeek, hashtag_vol$theDay , sep = "-" )
qplot(hashtag_vol$Date, hashtag_vol$ParisCount)





