# 3 - Case study I (60 minutes)

# Lecture: Descriptive and inferential statistics; data visualization
# Hands-on exercise: Apply the class’s solutions
# Q&A
##################################################################################################################

# Objects: Anything that exists is an object
# The most common data storage objects are vectors and data frames:

# Vectors - 1 dimensional, homogenous

# 4 most common user-defined
# Atomic vector types
# Logical - binary TRUE/FALSE, T/F, 1/0 (aka "Boolean")
# Integer - whole numbers (-5, 7, 0, etc...)
# Double - real numbers (3.14, 6.8, etc...)
# Character - aka "strings" (everything else)
# (Numeric is a generic term for integer or double)


# Dataframes: 2 dimensional, heterogenous
# A collection of vertical vectors of the same lengths!

# e.g.
PlantGrowth

# note:
# Rows == observations
# Columns == variables

# Access any named element with $ notation
PlantGrowth$weight # the weights, as a vector
PlantGrowth$group # the groups, as a vector

# names are an attribute (like metadata)
attributes(PlantGrowth) # Here, we have "names" and "class"

# For common attributes, use the accessor functions
names(PlantGrowth)
class(PlantGrowth)

##################################################################################################################

# Clear the workspace
rm(list = ls())

# Load packages
library(tidyverse)

# PlantGrowth Case study:
# Our dataset:
PlantGrowth

# ALWAYS explore your data set before working on it!
str(foo.df) # "structure"
glimpse(foo.df) # nicer output (from dplyr, a part of the tidyverse)
summary(foo.df) # different from above!
# you can also click on the arrow in the environment pane (right), or click on the name to open the data set in its own window


# Descriptive statistcs - i.e. AGGREGRATION functions
# e.g. mean, standard deviation, sum, product, max, min, range, etc.
# We'll typically get only a single value




# group-wise stats:
# Use functions from dplyr (tidyverse)
# %>% use shift + ctrl + m for the pipe operator
# say "and then ..."




# Normalizations/standardizations - i.e. TRANSFORMATION functions
# e.g. z-scores, log, square root, divide againg background or standard value
# We'll get as many output as input





# Data Visualization
# Use functions from ggplot2 (tidyverse)
# 3 essential components to every plot
# 1 - data (PlantGrowth)
# 2 - aesthetic mappings (which variable onto which scale?)
# i.e. x, y
# 3 - geometry (how will the plot look)


###### Inferential statistics ######
# First calculate a linear model:
# (Find the ~ sign on your keyboard)


# t-tests:
# Recall that classes tell other functions in R what to do with this object
# e.g. Before, we get a summary of each column
summary(PlantGrowth) 
# but here, we get t-tests
summary(plant.lm) 

# ANOVA:


##################################################################################################################

# Your turn!
# Try the above functions on a new data set:
chickwts

# Frist explore the data set:

# What is the mean, standard deviation and n value of each group?


# Can you plot the mean and standard deviation as a point with a line?


# Perform a 1-way ANOVA:

##################################################################################################################
