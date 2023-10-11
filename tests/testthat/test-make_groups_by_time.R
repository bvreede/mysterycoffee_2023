friends <- pick_starwarsfriends()
groups <- make_groups_by_time(friends)

test_that("data frame is returned with three columns", {
  expect_equal(ncol(groups), 3)
  expect_true(class(groups) == "data.frame")
})
