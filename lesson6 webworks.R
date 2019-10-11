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

 knownBudget <- movies %>%
  filter(!is.na(budget))
 
 knownBudget %>% 
   gf_point(length~year, col =~ log10(budget)) %>%
   gf_smooth(length ~ year) %>%
   gf_labs(title = 'Length vs. year',
           caption = 'Source: IMDB.com') %>%
   gf_refine(scale_y_log10())
 
movies %>%
   mutate(genre = case_when(
     Action == 1 ~ "action",
     Comedy == 1 ~ "comedy",
     TRUE ~ "other"
   ))
 
 movies %>% movies  %>%
   filter(genre)

 movies  %>% 
   gf_point(length~genre) %>% gf_smooth(length~genre)
gf_histogram(~length, fill =~ genre,
             position = position_dodge(),data=movies )

movies %>%
   gf_bar(~mpaa)%>%
   gf_refine(scale_y_log10())
    
len_by_mpaa <- movies %>%
   group_by(mpaa) %>%
   summarise(avg_len = mean(length)) 

len_by_mpaa %>%
   mutate(mpaa = reorder(mpaa, avg_len)) %>%
   gf_col(avg_len ~ mpaa, fill = 'blue')

movies %>%
   gf_boxplot(length ~ mpaa) %>%
   gf_refine(scale_y_log10())
      

   

 