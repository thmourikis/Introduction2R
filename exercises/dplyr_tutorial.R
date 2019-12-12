## Note for all the following operations you need to use the "%>%" operator

## dplyr tutorial
install.packages("dplyr")
library(dplyr)

## read in msleep_ggplot2.csv

## print its head



"
The columns (in order) correspond to the following:
column name	Description
name	common name
genus	taxonomic rank
vore	carnivore, omnivore or herbivore?
order	taxonomic rank
conservation	the conservation status of the mammal
sleep_total	total amount of sleep, in hours
sleep_rem	rem sleep, in hours
sleep_cycle	length of sleep cycle, in hours
awake	amount of time spent awake, in hours
brainwt	brain weight in kilograms
bodywt	body weight in kilograms
"

## Selecting columns using select()
## Select a set of columns: the name and the sleep_total columna


## To select all the columns except a specific column, use the “-“ (subtraction) operator (also known as negative indexing)

## To select a range of columns by name, use the “:” (colon) operator

## To select all columns that start with the character string “sl”, use the function starts_with()

"
Some additional options to select columns based on a specific criteria include

ends_with() = Select columns that end with a character string
contains() = Select columns that contain a character string
matches() = Select columns that match a regular expression
one_of() = Select columns names that are from a group of names
"

# Selecting rows using filter()
# Filter the rows for mammals that sleep a total of more than 16 hours.

# Filter the rows for mammals that sleep a total of more than 16 hours and have a body weight of greater than 1 kilogram.

# Filter the rows for mammals in the Perissodactyla and Primates taxonomic order

# To arrange (or re-order) rows by a particular column such as the taxonomic order, list the name of the column you want to arrange the rows by

# Create new columns using mutate()
# The mutate() function will add new columns to the data frame. Create a new column called rem_proportion which is the ratio of rem sleep to total amount of sleep.

# Create summaries of the data frame using summarise()
# The summarise() function will create summary statistics for a given column in the data frame such as finding the mean. For example, to compute the average number of hours of sleep, apply the mean() function to the column sleep_total and call the summary value avg_sleep.


# Group operations using group_by()
# The group_by() verb is an important function in dplyr. As we mentioned before it’s related to concept of “split-apply-combine”. We literally want to split the data frame by some variable (e.g. taxonomic order), apply a function to the individual data frames and then combine the output.