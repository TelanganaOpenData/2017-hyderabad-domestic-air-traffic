setwd("E:/Projects/DATAWORLD_Dir/Air-Passengers17")
df <- read.csv("https://query.data.world/s/ctnyny3uk5yv3iqicf3n2p5nui7ugy", header=TRUE, stringsAsFactors=FALSE)
head(df)
str(df)
summary(df)
# the number of passengers travelled on each month from hyderabad to other cities  
#tblTocity2 <- tapply(df$PASSENGERS.TO.CITY.2, df$Month, sum)
tblTocity2 <- aggregate(df$PASSENGERS.TO.CITY.2, list(df$Month), sum)
tblTocity2[which(tblTocity2$x==max(tblTocity2$x)),]
# October month there are maximum passengers traveled from Hyderabad to other cities
class(tblTocity2)
city2 <- tapply(df$PASSENGERS.TO.CITY.2, df$Month, sum, simplify = FALSE)
class(city2)
