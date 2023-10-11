load("myVector.rda")
groups <- make_groups(myVector)

test_that("make_groups divides groups equally", {
  expect_equal(ncol(groups), 2)
  expect_equal(nrow(groups), 2)
})

test_that("false flag works on make_groups",{
  groups <- make_groups(myVector, result = F)
  expect_equal(groups, "there is no result")
})

test_that("sample returns something", {
  cm <- pick_classmate()
  expect_type(cm, "character")
  expect_equal(length(cm), 1)
})
