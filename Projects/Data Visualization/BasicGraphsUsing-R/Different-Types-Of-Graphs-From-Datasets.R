# Bar Chart : 4-11

hotdogs <- read.csv("hot-dog-contest-winners.csv", sep = ",", header = TRUE)
hotdogs
fill_colors <- c()
for(i in 1:length(hotdogs$New.record)){
  if(hotdogs$New.record[i] == 1){
    fill_colors <- c(fill_colors, "#821122")
  } else{
    fill_colors <- c(fill_colors, "#CCCCCC")
  }  
}
barplot(hotdogs$Dogs.eaten, names.arg = hotdogs$Year, col = fill_colors, border = NA,
        space = 0.3, xlab = "Year", ylab = "Hot dogs and buns (HDB) eaten", main="Nathan's Hot Dog Eating Contest Results, 1980-2010",axes=FALSE)
axis(2, at=c(0,10,20,30,40,50,60),labels=c(0,10,'',30,'',50,''))

# Stacked Bar Chart : 4-22

hot_dog_places <- read.csv('hot-dog-places.csv', sep = ",", header = TRUE)
names(hot_dog_places) <- c("2000", "2001" , "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010")
hot_dog_matrix <- as.matrix(hot_dog_places)
barplot(hot_dog_matrix, border=NA, space=0.25, ylim=c(0,200), xlab = "Year", ylab = 
       "Hot dogs and buns (HDBs) eaten", main = "Hot Dog Eating Contest Results, 1980-2010")

# Scatterplot: 4-28

subscribers <- read.csv("http://datasets.flowingdata.com/flowingdata_subscribers.csv", sep = ",", header = TRUE)
plot(subscribers$Subscribers, type = "h", ylim = c(0,30000), xlab = "Day", ylab = "Subscribers")
points(subscribers$Subscribers, pch=19, col="black")

# Time Series: 4-34

population <- read.csv("http://datasets.flowingdata.com/world-population.csv", sep = ",", header = TRUE)
head(population)
plot(population$Year, population$Population, type = "l", ylim = c(0, 7000000000), xlab = "Year", ylab = "Population", lwd=2.5,frame.plot=FALSE)


# Step Chart: 4-43

postage <- read.csv("us-postage.csv", sep = ",", header = TRUE)
postage_2009 = postage[1:9,]

plot(postage_2009$Year, postage_2009$Price, type="s", main="US Postage Rates for Letters, First Ounce, 1991-2009", xlab="Year", ylab="Postage Rate (Dollars)",axes=FALSE)

axis(1, at=c(1995, 2000, 2005))
axis(2, at=c(0.30, 0.35, 0.40))
box()

# Loess Curve: 4-51

unemployment <- read.csv("http://datasets.flowingdata.com/unemployment-rate-1948-2010.csv", sep = ",")
plot(1:length(unemployment$Value), unemployment$Value)

scatter.smooth(x=1:length(unemployment$Value), y=unemployment$Value, ylim=c(0,11), degree=2, col="#CCCCCC", span=0.5)
