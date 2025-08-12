# making vectors

# character vector

dogs <- c("teddy", "khora", "waffles", "banjo")
class(dogs)

typeof(dogs)

# numeric vector
weights <- c(50, 55, 25, 35)
typeof(weights)
class(weights)

# integer vector
 dog_age <- c(5L, 6L, 7L, 1L)
class(dog_age) 
typeof(dog_age)

is.numeric(dog_age) #returns true

# what happens when combining classes

dog_info <- c("teddy", 50, 45L)
class(dog_info)

print(dog_info)

# named elements
dog_food <- c(teddy = "purina", khora = "alpo", waffles = "fancy feast", banjo = "blue diamond")
class(dog_food) # defining character string requires "", but the pet names are object names
print(dog_food)

# accessing bits of vectors
dog_food[3]
dog_food["khora"]
dog_food[1:3]

# warm up for for loops
i <- 4
dog_food[1:i]

#key points: index by position (access element based on its position), define variables with their positions

# overwriting data
dog_food[1] <- "burritos"

dog_food #vectors are mutable- overwritable


# 2D- matrices- like taking a vector and wrapping through rows and columns

fish_size <- matrix(c(0.8, 1.2, 0.4, 0.9), 
                    ncol =2, 
                    nrow = 2, 
                    byrow = FALSE)
fish_size
typeof(fish_size) # working with numeric data with decimmals
class(fish_size)

# accesing pieces of a matrix through indexing
fish_size[1, 2] # must specify two dimensions (row, column)
fish_size[,2] #get second column 
fish_size[1,] # get whole row

# making a list
urchins <- list("blue", 
                c(1,2,3), c("a cat", "a dog"), 5L)
urchins

# access data in a list
# indexing into vector
urchins[2]
#indexing into elements of vectors
urchins[[2]]

# naming list
#this meets the same requirements as a data frame where each vector is the same size
tacos <- list(toppings = c("onion", "cilantro", "guac"), 
              filling = c("beans", "meat", "veggies"), 
              price = c(6.5, 8.25, 7.3))
tacos[[2]]
tacos$toppings

# data frames 
fruit <- data.frame(type = c("apple", "banana", "peach"), 
                    mass = c(130, 195, 150))
fruit
class(fruit)
# each row treated as an individual observation

fruit$type
fruit[,2] # 2nd column
fruit[1,] # first row

#mutable
fruit[2,1] <- "pineapple"
fruit
