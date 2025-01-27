test_that("Correct output from html_to_df()", {
  df <- html_to_df(
    list.files(system.file("extdata", package = "tenupR"),full.names = T)
  )
  expect_equal(class(df), "data.frame")
  expect_named(df,c(c("adversaire","ne_en","classement","issue","score",
                      "competition","coef","joue_le","date_val")))
  expect_equal(class(df$classement),"factor")
})

test_that("Gives error when wrong input is given",{
  expect_error(html_to_df("data.csv"),"'file' must be an html file")
})
