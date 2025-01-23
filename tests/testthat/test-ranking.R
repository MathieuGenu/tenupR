test_that("Correct outputs from as_ranking()", {
  expect_equal(class(as_ranking("15/5")), "factor")
  expect_equal(as.numeric(as_ranking("30/3")),5)
  expect_equal(class(as_ranking(c("-2/6","30"))), "factor")
})

test_that("Gives error when wrong input is given", {
  expect_error(as_ranking(30),"'rank' must be a character string")
  expect_error(as_ranking("-2-6"),"'rank' must be a correct ranking")
})
