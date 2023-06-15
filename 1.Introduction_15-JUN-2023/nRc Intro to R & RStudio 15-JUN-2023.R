#---- nRc: Introduction to R & RStudio ----
# 
# R is an open-source software environment and programming language providing a wide 
# range of statistical and graphical techniques for data analysis, data manipulation, 
# modeling, and visualization.
#
# RStudio is a user-friendly integrated development environment (IDE) for working with
# the R programming language. 
#
#---- How to Download/install R and RStudio ----
#
# You will need to download/install BOTH R and R Studio. Depending on your 
# IT access, you may need to put in a ticket with Client Services for the installation 
# of these on your NRC computer. Make sure you ask for R AND RStudio. 
# 
# To download/install R, download the program applicable to your operating system. 
#  https://cran.r-project.org/
#
# To download/install RStudio, download the program applicable to your operating system.
# The free, open-source is the one that we will be using. 
# https://posit.co/downloads/

#---- Overview of the RStudio Interface ----
# R Studio is split into 4 different sections
#   Top left (Source): Where you write and edit scripts
#   Top right (Environment & History): Where you see objects and variables
#   Bottom left (Console): Where you see the results of running a script
#   Bottom right (Files, Plots, Packages, Help): Where you see files in the working
#     directory, resulting plots,and packages to load
# 
# These sections are adjustable by hovering cursor on the boundaries of each
# section and dragging to adjust
# 
# Start a new project:
#   In the top right corner, click on the cube with an "R" inside of it
#   Select "New Project"
#   Select "New Directory"
#   Select "New Project"
#   Select "Browse" and choose an appropriate folder or make a new folder
#   Select "Create Project"
# 
#   By creating a "project" and working within a "project", it automatically
#   sets the working directory -- so any spreadsheets that you work with can
#   simply be moved to the folder containing the "project" file.The working directory 
#   refers to the current directory or folder on your computer's 
#   file system where R will look for and save files. It is the default location where R 
#   will read files from or write files to, unless you specify a different file path.
#
#   Move the provided unzipped files from your downloads into this folder.
# 
# Start a new R script:
#   In the top left corner, select the white paper with a green + sign
#   Select "R Script"
#   To open or import a script, select the yellow folder with the green arrow
#     (top left corner) and select the script you want to open
#   To save a script, click the save button --> save your scripts often!
#   To run a script, highlight the section of the script you want to run, then click
#     "Run" in the right of the script section
#   When writing your scripts, if something is incorrect or incomplete, a little white "x"
#   will be listed beside the lines of code in the script with an error.
#   Script in R is case sensitive:
#     1) If a label or variable in an excel sheet you import has capital letters, you
#     need to include capital letters when referring to that label or variable.
#     2) Almost all functions in R are lower case
# 
# Other topics
#   "Code tools" button --> comment/uncomment lines of code
#   Environment tab --> clear environment (broom)
#   History tab --> clear history (broom)
#   Files tab --> shows all of the files that are in the directory you have selected
#   Plots tab --> any time you run code that results in a plot, it will appear here
#   Packages --> Install and load packages, or click on a specific package to learn
#     more about what is included in that package
# 
# Shortcuts
# Ctrl + Enter --> Run the current line of code
# Ctrl + A + Enter --> Run all lines of code
# Ctrl + Shift + C --> Comment or uncomment lines
# 
# How to change the appearance of R studio:
#   In the top bar, click "Tools". Select "Global Options", then "Appearance" and play
#   around with the RStudio Theme and Editor theme.
# 
# Here, you will be introduced to "functions" in R. Functions are simply commands
# that can do different things based on the information that you fill in the brackets.
# Functions help us  accomplish a specific task or set of tasks and they take inputs 
# called arguments or parameters. They return output values or perform tasks based on 
# those inputs.
#
# Some functions, as you will see below, do not require you to fill in the brackets.
# 
# R prefers to read CSV files, not regular excel files. So you will notice today, all the
# spreadsheets we will be working with are in CSV format.
#   
#
getwd() #To see the working directory
list.files() # To  see the files in the current working directory
# 
# 

#In R, you can do simple mathematical operations like these:
10+10

10*2

10-30

10/5

#Another thing you can do is assign each of these operations a variable:

a <- 10+10

b <- 10*2

c <- 10-30

d <- 10/5

a
b
c
d

#Add a, b, c, and d together to associate them with a new variable (e)
e <- a+b+c+d
e

f <- e/-11
f

# There are other mathematical expressions that are compatible in R, too.
# ^ is for exponents
# sqrt() is for the square root
# log() is for ln
# log10() is for log with a base 10

sqrt(25)

5^2

# The default to this function is the natural log (ln) of a vector (i.e. base e)
log(2.718)

log10(100)

# You can also use the round() function to round decimals to the nearest whole number,
# or you can round to a certain number of digits. 

?round() #Add a question mark in front of any function to pull up the "Help" page for 
#that function

round(3.14159)

round(3.14159, digits = 2) #Rounds to 2 decimal places

#---- How to install and load packages ----
# Packages are essentially special plugins for R that are designed for different 
# things -- certain packages are good for graphing, others are great for multivariate
# statistics. Below is a general list of good packages I like to include anytime 
# I set up R and R studio, however, you can always install more to your program! 
# The 2 steps are 1) Installing a package, and 2) Loading a package. Once you install
# an R program, you should not need to re-install it unless you do certain updates 
# or there is a problem with your R. However, each time you close then reopen your R,  
# you will need to "load" your package. 
# 
# install.packages() is the function used to install a package. Once you install a 
# package in R, you should not need to install it again on the present version. 
#
install.packages("tidyverse")
# 
# library() is the function used to load a package. Every time you restart/reopen R, 
# you will need to load the packages. 
# 
library(tidyverse)
#
# One of the most useful packages to install will be "tidyverse" -- which compiles 
# several very important packages all in one installation. Included in this are dplyr,
# ggplot2, and plyr that will be using often. 
#
#---- Reading a file in R ----
# 
# The easiest form of spreadsheet to read in R is a csv file -- so when you save 
# an spreadsheet file, save it in the .csv (comma delimited) file format.
# 
# You can use the read.csv() function to read any csv file within your current working 
# directory. 

data <- read.csv(file="pets.csv")
data

# str() displays the internal structure of an object; it lists the "type" of category 
# each factor in the data is. 
#   chr ------> character (name, letters, etc.)
#   int ------> integer
#   num ------> numeric 
#   logical --> TRUE or FALSE
#   complex --> complex numbers 

# Difference between "int" and "num" in R: "num" encompasses integers, decimals, etc.
# I usually change all int or num data to numeric. 

str(data)

# The $ used in the brackets signify that "age" refers to the "age" column within 
# the "data" dataset. This is more useful when you have a ton of different datasets
# loaded with the same or similar factors/column headings/etc. 

age <- as.numeric(data$age)
age
str(age)

weight <- as.numeric(data$weight)
weight
str(weight)

breed <- as.factor(data$breed)
breed
str(breed)

animal <- as.factor(data$animal)
animal
str(animal)

# ---- Basic Statistics ----

# This is taking the mean, median, min, and max of all the age data.
mean(age)
median(age)
min(age)
max(age)

# What is the mean, median, min, and max of the weight data?
mean(weight)
median(weight)
min(weight)
max(weight)

# sort() sorts a category alphabetically or numerically. 
sort(data$name)
sort(data$weight)

# ---- Pipes in R ----
# Pipes are a function originally from the magrittr package, but now are combined 
# with the tidyverse package that encompasses multiple packages/functions. They are 
# actually so popular now that they are included in base R! 
# Pipes are a super effective way to combine, alter, and filter data from a
# dataset. We will be using pipes a lot as we start to do more with data wrangling!

# group_by() tells you what factor you want your data to group into for the further calculations.
# So, in the first example, you are taking your "data" file, grouping based on "breed", 
# then summarizing the means based on breeds. 


data%>%
  group_by(breed)%>%
  dplyr::summarise(mean_weight = mean(weight))

data%>%
  group_by(breed)%>%
  dplyr::summarise(mean_age = mean(age))

data%>%
  group_by(animal)%>%
  dplyr::summarise(mean_weight_animal = mean(weight))

data%>%
  group_by(animal)%>%
  dplyr::summarise(mean_age_animal = mean(age))

# You can also select certain rows of data or columns based on what data you are 
# interested in. 
# filter() retains a subset of rows that satisfy all the conditions you specify
# select() retains a subset of columns that satisfy all the conditions you specify 

# This takes the dataset and selects ONLY the rows where the animal is categorized
# as "Cat"
data%>%
  dplyr::filter(animal == "Cat")

# Let's associate this "Cat" subgroup of data with a new variable
cat.data <- data%>%
  dplyr::filter(animal == "Cat")

cat.data


# Now combine the "filter" function with the "summarise" function used previously
# to filter only the "Cat" data then again, find the means. 
cat.data <- data%>%
  dplyr::filter(animal == "Cat")%>%
  dplyr::summarise(mean_age_cat = mean(age))

cat.data

# This takes the dataset and selects ONLY the column labelled "weight"
data%>%
  dplyr::select(weight)

# Ooops -- we want the name and breed of the dogs associated with the weights, too!
# How would you add in the name and breed columns, too?
data%>%
  dplyr::select(name, breed, weight)

# How would you find the mean weight of each dog breed only? 
data%>%
  dplyr::filter(animal == "Dog")%>%
  group_by(breed)%>%
  dplyr::summarise(mean_weight = mean(weight))

