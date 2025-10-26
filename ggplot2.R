#GGPLOT2
library(tidyverse)
simadata<- read.csv("simadata.csv")  
head(simadata)
colnames (simadata)
#1Scatterplot

ggplot(data = simadata, mapping = aes(x = Height-cm
, y = Age)) +
  geom_point()
ggplot(data = simadata, mapping = aes(x = Gender, y = Age, color = Sport)) +
  geom_point()

#2Smooth line
ggplot(data = simadata, mapping = aes(x = Gender, y = Age)) +
  geom_point(color = "darkblue") +      
  geom_smooth(color = " darkred") 
theme_classic() +                      
  ggtitle("Age vs Gender") +             
  xlab("Gender") +                        
  ylab("Age") 
ggplot(data = simadata, mapping = aes(x = Gender, y = Age
)) +
  geom_point() +
  geom_smooth()

#3Bar chart
ggplot(data = simadata, aes(x = Gender)) +
  geom_bar()
ggplot(data = simadata, aes(x = Satisfaction, fill = Age)) +
  geom_bar(position = "dodge")

#4Histogram
ggplot(data = simadata, aes(x = Height-cm)) +
  geom_histogram(bins = 10)

#5Density plot

ggplot(data = simadata, aes(x = Satisfaction)) +
  geom_density()

#6Boxplotr
ggplot(data = simadata, aes(x = Sport, y =Satisfaction)) +
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
  geom_point(color = "red") +      
  geom_smooth(color = "black") +      
  facet_grid(Sport ~ Sport
) + 
  ggtitle("Age vs Gender by Satisfaction and Gender
 ") +  
  xlab("Sport") + 
  ylab("Age")

# View the plot
p

# Save the plot
ggsave("myplot.png", plot = p)