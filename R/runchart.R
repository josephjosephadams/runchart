#'Create run chart fields for vector \code{val}.
#'
#'@param val create run chart fields for \code{val}.
#'@return A data.frame with four columns: 1. The original data. 2. A base line.
#'  3. An extended base line. 4: Shifts.
#'@examples
#'runchart(rep(1:20))
#'@seealso \code{\link{sus}} \code{\link{shift}}

#'@export
runchart <- function(val) {
  stopifnot(
    is.numeric(val),
    length(val) > 0
  )

  rc <- sus(val)
  shift <- shift(val, rc[['base']], rc[['base_ext']])

  rc[['shift']] <- shift
  rc[['val']] <- val

  return(rc)
}