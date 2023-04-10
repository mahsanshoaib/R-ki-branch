# Importing dataset----

df <- read_csv("Shoe prices.csv", show_col_types = FALSE)
View(df)
 
# Data Visualization.

## Plotting bar plot to figure out the times of brands appears in data set-----

library(ggplot2)

# "col" function dont fill the bars with colors but just outlines them with colors 
ggplot(data=df, mapping = aes(x=Brand, col= Brand))+geom_bar()+theme_light()

# to fill the bars with color according to a variable, so that we can differentiate properly among bars, we use "fill" function
ggplot(data=df, mapping = aes(x=Brand, fill=Brand))+geom_bar()+theme_gray()

# As we can see there is not much difference between the number of occurances of brands. almost same. 

#filling the bars with a specific color. and removing the grid lines using theme function
ggplot(data=df, mapping = aes(x=Type))+geom_bar(fill="#798088")+ theme_light()+theme(
  panel.grid.major = element_blank(),
  panel.grid.minor = element_blank())


