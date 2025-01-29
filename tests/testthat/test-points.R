test_that("Correct output from html_to_df()", {
  expect_equal(points(-5),0)
  expect_equal(points(0),60)
  expect_equal(points(5),120)
})

test_that("Gives error when wrong input is given",{
  expect_error(points("2"),"'diff' must be numeric")
  expect_error(points(2.5),"'diff' must be a positive or negative integer")
})
