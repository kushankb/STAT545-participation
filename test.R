library("tidyverse")
library("gapminder")

#saving to a disk
gapminder
write_csv(gapminder, './gapminder.csv')  #. means current directory
view(gapminder)

gapminder_sum<-gapminder %>% 
  group_by(continent) %>% 
  summarise(ave_life=mean(lifeExp))

view(gapminder_sum)
write_csv(gapminder_sum,'./gapminder_sum.csv')

gapminder_sum %>% 
  ggplot(aes(x=continent,
             y=ave_life))+
  geom_point()





#Some notes

ls() #gives you all the variables in your directory
list=ls() # lists all of them 
remove(list=ls()) #removes all the variables but does not detach any packages.


#library here-- used to make directory structure platform agnostic!
library("here")
here()
write.csv(here::here("kushank","Desktop", "STAT_545",gapminder.csv))
