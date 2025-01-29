test_that("Correct output from match_comptabilise()", {
  expect_equal(
    match_comptabilise(palmares,as_ranking("15/4"),"01-2025"),
    1
  )
})

test_that("Gives error when wrong input is given",{
  expect_error(
    match_comptabilise(palmares,as_ranking("15/4"),"01-01-2025"),
    "'date_sim' should be 'mm-yy' format"
  )
  palmares_missing_col <- palmares[,-length(names(palmares))]
  expect_error(
    match_comptabilise(palmares_missing_col,as_ranking("15/4"),"01-2025"),
    "'df' should have all these following columns :\n
            classement,issue,score,competition,coef,joue_le,date_val,match_type"
  )
})
