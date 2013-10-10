#' Export Dates or POSIX to ISO8601 string
#' 
#' @param x vector of type Date or POSIXt
#' @param ... method specific things
#' @return character vector
#' @export
as.iso <- function(x, ...){
	UseMethod("as.iso");
}

#' @method as.iso Date
#' @S3method as.iso Date
as.iso.Date <- function(x, ...){
	as.character(x);
}

#' @method as.iso POSIXt
#' @S3method as.iso POSIXt
as.iso.POSIXt <- function(x, UTC=FALSE, ...){
	if(isTRUE(UTC)){
		as.character(x, format="%Y-%m-%dT%H:%M:%SZ", tz="UTC");
	} else {
		as.character(x, format="%Y-%m-%dT%H:%M:%S");
	}
}