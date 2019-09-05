numbers<-5+2
numbers/5
times<-c(60,50,33,15,5,55)

# to print the object while definig it, put it in ()
(times<-c(60,50,33,15,5,55)) 
times/60

# mean, sqrt, <, > == etc are all fuctions
mean(times)

# to round use fuction round(). 
round(mean(times),digits=2)

sqrt(times)
(times>30)
#    use == to check equality and != to check inequality

#   & and | are used for and and or function and gives a logical result 
times >20 & times<50

times >20 | times>50

# which(),any() and or() or  function takes logical as inputs and gives true indices (actual values)
which(times<30)

# subsetting
times[3]
# to subset everything except 3rd value use:
times [-3]
times [c(4,2)]

# to extract the values. First it runs the logical function < and then gives true indice value. Doing this, the times operation does not changge
times[times<30]

# to do replace vaues greater than 50 with 50
times[times>50]<-50

#NA
times[8]<-NA
mean(times) # gives a NA if there is a NA in the vecctor 

#to remove NA use is.na()
mean(times, na.rm=TRUE)

#data frames
mtcars
str(mtcars) # prints the structure of df
names(mtcars) # prints names
