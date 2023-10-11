#' Group people in pairs
#'
#' Turn a vector of names into a matrix with randomly
#' paired people, preparing for a mystery coffee
#' date!
#'
#' @param names (character) vector with names of participants
#' @param result Boolean flag, indicating whether a result should be returned (default = True)
#'
#' @return matrix of coupled names
#'
#' @examples
#' make_groups(c("Jacques","Georgi"))
#'
#' @export
make_groups <- function(names, result = T){
  if(!result){
    return("there is no result")
  }
  names_coupled <- names |>
    my_sample() |>
    matrix(ncol = 2)
  return(names_coupled)
}

my_sample <- function(names){
  return(sample(names))
}

#' Pick a classmate
#'
#' @return random classmate
pick_classmate <- function(){
  return(sample(mysterycoffee::classmates, 1))
}

pick_starwarsfriends <- function(n=10){
  swfriends <- starwarsdb::people$name
  return(sample(swfriends, n))
}
