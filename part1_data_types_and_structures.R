# Data Types and Structures in R

# Section 1: Data Types

# Character = String in Python
# Numeric: 3, 12.7, -1
# Integers: 3L, 10000L (follow the number with capital L)
# Logical: TRUE, FALSE, T, F

# Atomic Vectors: They can hold only a single data type

# Missing Data: NA
## R supports missing data in vectors and they are represented as NA
## They can be used for all vector types

# Special Values
## Inf = Infinity
## NaN = Not a Number (Undefined Value)

# Coercion = Conversion between types (Casting in Python)
## Implicit Coercion
## Explicit Coercion: When user explicitly coerces a type into another type

# Matrices
## An extension of the numeric or character vector, not data type on their own
## Simply an atomic vector with dimension (rows and column)
## for ML R uses mostly dataFrames
## Like atomic vectors, matrices are of the same data types
## filled column-wise by default and elements are referenced by specifying the dimsnions in single square brackets

# Lists
## Act as containers, and contents are not restricted to single type
## A list contains many different data types
## They are fundamental to R and are sometimes called generic vectors
## They are special type of vector
## Contents accessed by double square brackets
## They are extremely useful inside functions because R functions can return a single object
## You can package together different kinds of results into a single object that a function can return

# DataFrames: The most important data type in ML
## The de facto data structure for most tabular data and what we use for statistics
## It is a special type of list where every element of the list has the same length (data frame is a rectangular list)
## They come with a bunch of helper functions: head(), tail(), nrow(), ncol(), str(), summary(),
## names(), colnames(), rownames(), sapply(), etc
## Elements within dataframe can be referenced by specifying the row and the column index in single square brackets (similar to matrices)
## Since data frames are also lists, we can refer to columns (elements of such lists) using the list notation (double-square brackets or $)

# Tibble: A modern re-imagining of the data frame
## Does less and complains more (forces you to confront the problem earlier)
## Lead to more cleaner, expressive code
## Comes with a more enhanced print() function
## Makes it easier to use large data sets containing complex objects
## One of the unifying features of tidyverse: dataframes in tidyverse are unified in tibble
## Tibbles never change the type of input, whereas datafrmaes often coerce
## Never change the names of variables or create row names
## You can name columns with unconventional R names (non-syntactic)
### Cant have variable names with spaces or not starting with letters etc, but this is acceptable in tibble
### Surround with backticks(')
## Comes with a very useful function called tribble(): transposed tibble
### Customized for data entry in code
#### Column headings defined by formulas (i.e. start with ~), and entries separated by commas
### Makes it possible to lay out small amounts of data in easy-to-read form
## Refined print method
### Shows only the first 10 rows
### Shows all the columns that fit on the screen
### Makes it much easier to work with large data
### Each column reports its name and type (like str())

# Checking types
class("a")
# "character"

class(12.7)
# "numeric"

class(2)
# "numeric"

class(2L)
# "integer"

as.integer(12.7)
# 12

class(TRUE)
# "logical"

class(T)
# "logical"

################################################################
# Vectors: Long collection of elements of the same type (Atomic)
vector()
# logical(0)
?vector

vector(mode = "character", length = 10)
# [1] "" "" "" "" "" "" "" "" "" ""

vector("character", 10)
# [1] "" "" "" "" "" "" "" "" "" ""

vector("numeric", 10)
# [1] 0 0 0 0 0 0 0 0 0 0

vector("integer", 10)
# [1] 0 0 0 0 0 0 0 0 0 0

vector("logical", 10)
# [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE

?character
character(length = 10)
# [1] "" "" "" "" "" "" "" "" "" ""

vector("character", 10) == character(length = 10)
# [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE

numeric(10)
# [1] 0 0 0 0 0 0 0 0 0 0

logical(10)
# [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE

integer(10)
# [1] 0 0 0 0 0 0 0 0 0 0

# Defining a vector shortly
c(1,2,3)
# [1] 1 2 3

c(TRUE, FALSE, TRUE, FALSE)
# [1]  TRUE FALSE  TRUE FALSE

c("John", "Stacy", "Mike")
# [1] "John"  "Stacy" "Mike" 

# Length function: The number of elements within a vector
length(c("John", "Stacy", "Mike"))
# 3

x <- c(1,2,3)
length(x)
# 3

length(5)
# 1: A vector of length 1

length("Hello World")
# 1

# Structure function str()
str(x)
# num [1:3] 1 2 3

str(c("John", "Stacy", "Mike"))
# chr [1:3] "John" "Stacy" "Mike"

# More Vector Operations
# One way to create a vector
x <- c(1,2,3)

# Colon operator for range
1:3
# [1] 1 2 3
