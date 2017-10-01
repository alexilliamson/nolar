#'Get the first day of the month of a given date
#'
#' @param d a date
#' @return First day of the month in which \code{d} falls
#' @export
#' @examples
#' month_start(lubridate::date('2017-01-01'))
month_start <- function(d){

	lubridate::ymd(paste0(lubridate::year(d),'-',lubridate::month(d),'-01'))

	}


#'Get the first day of the quarter of a given date
#'
#' @param d a date
#' @return First day of the month in which \code{d} falls
#' @export
#' @examples
#' month_start(lubridate::date('2017-01-01'))
quarter_start <- function(d){
	qtr <- lubridate::quarter(d)
	month_num <- 1 + 3 * (qtr - 1)

	return_date <- lubridate::ymd(paste0(lubridate::year(d),'-01-01'))
	lubridate::month(return_date) <- month_num

	return(return_date)
}


#'Get the first day of the year of a given date
#'
#' @param d a date
#' @return First day of the month in which \code{d} falls
#' @export
#' @examples
#' month_start(lubridate::date('2017-01-01'))
year_start <- function(d){
	lubridate::ymd(paste0(lubridate::year(d),'-01-01'))
}