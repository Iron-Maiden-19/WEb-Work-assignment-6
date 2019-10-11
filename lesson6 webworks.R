install.packages("dplyr")
install.packages("ggformula")
install.packages("ggplot2movies")
install.packages("tidyverse")
library(dplyr)
library(readr)
library(ggformula)
library(ggplot2movies)

data()
library(dplyr)
movies = as.data.frame(movies)
movies
summarise(movies)
?movies
dim(movies)
gf_point(length~year, color=~budget,data=movies)%>%gf_smooth(length~year)


movies %>%
  gf_boxplot(length ~ 1) %>%gf_smooth(length~year)%>%
gf_refine(scale_y_log10())

movies <- ed_exp5 <- select(filter(education, Region == 2),c(State,Minor.Population:Education.Expenditures))
           

 






