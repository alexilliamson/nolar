library(lubridate)
library(datetimeR)
context("Quarter Start")

test_that("quarter_start of january through march is january 1", {
	expect_equal(quarter_start(lubridate::date('2017-01-15')), lubridate::date('2017-01-01'))
	expect_equal(quarter_start(lubridate::date('2017-02-15')), lubridate::date('2017-01-01'))
	expect_equal(quarter_start(lubridate::date('2017-03-15')), lubridate::date('2017-01-01'))
})