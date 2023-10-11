make_groups_by_time <- function(names){
  # make groups into a data frame
  groups <- data.frame(make_groups(names))

  # rename column names
  names(groups) <- c("person1", "person2")

  # pick times
  possible_times <- c("09:30",
                      "10:00",
                      "14:00",
                      "16:30")
  # groups$times <- sample(possible_times,
  #                        nrow(groups),
  #                        replace = TRUE)

  groups <- dplyr::mutate(groups,
                time = sample(possible_times,
                              nrow(groups),
                              replace=TRUE)
                )
}
