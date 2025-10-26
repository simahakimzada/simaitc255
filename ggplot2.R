#GGPLOT2
library(tidyverse)
simadata<- read.csv("simadata.csv")  
head(simadata)
colnames (simadata)
#1Scatterplot

ggplot(data = simadata, mapping = aes(x =Height-cm
, y = Age)) +
  geom_point()
ggplot(data = simadata, mapping = aes(x = Gender, y = Age, color = Sport)) +
  geom_point()

#2Smooth line
ggplot(data = simadata, mapping = aes(x = Gender, y = Age)) +
  geom_point(color = "blue") +      
  geom_smooth(color = "red") 
theme_classic() +                      
  ggtitle("Age vs Gender") +             
  xlab("Gender") +                        
  ylab("Age") 
ggplot(data = simadata, mapping = aes(x = Gender, y = SkillLevel)) +
  geom_point() +
  geom_smooth()

#3Bar chart
ggplot(data = simadata, aes(x = gender)) +
  geom_bar()
ggplot(data = simadata, aes(x = Satisfiction, fill = Age)) +
  geom_bar(position = "dodge")

#4Histogram
ggplot(data = simadata, aes(x = High.cm)) +
  geom_histogram(bins = 10)

#5Density plot

ggplot(data = simadata, aes(x = Level.of.Satisfaction)) +
  geom_density()

#6Boxplot
ggplot(data = simadata5, aes(x = Sport, y = Level.of.Satisfaction)) +
  geom_boxplot()

#7Facets
ggplot(data = simadata, aes(x = Gender, y = Age)) +
  geom_point() +
  facet_wrap(~ Sport)
ggplot(data = simadata, aes(x = Gender, y = Age)) +
  geom_point(color = "Dark Blue") +
  geom_smooth(color = "Green") +
  facet_grid(Gender ~ Age)

p <- ggplot(simadata, aes(x = Gender, y = Age)) +
  geom_point(color = "blue") +      
  geom_smooth(color = "black") +      
  facet_grid(Sport ~ SkillLevel) + 
  ggtitle("Age vs Gender by Sport and SkillLevel") +  
  xlab("Sport") + 
  ylab("Age")

# View the plot
p

# Save the plot
ggsave("myplot.png", plot = p)