% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/runchart.R
\name{runchart}
\alias{runchart}
\title{Create a run chart fields for dataframe \code{df}.}
\usage{
runchart(df, shift = TRUE, trend = FALSE, rephase = FALSE,
  output = "plot")
}
\arguments{
\item{df}{a data.frame which must consist of exactly two columns: a column of
type Date called \code{date} and a column of numeric type called \code{value}.}

\item{shift}{include shifts? Defaults to \code{TRUE}.}

\item{trend}{include trends? Defaults to \code{TRUE}.}

\item{rephase}{rephase baselines? Defaults to \code{FALSE}.}

\item{output}{return a dataframe or a plot? Either one of
\code{c("plot"), ("df")} Defaults to \code{"plot"}.}
}
\value{
Either a data.frame with runchart fields, or a plot.
}
\description{
Create a run chart fields for dataframe \code{df}.
}
\examples{
df <- data.frame(
date  = seq.Date(Sys.Date(), by = "day", length.out = 30),
value = c(4,3,3,2,2,3,3,4,4,4,4,3,3,2,2,1,2,1,0,3,3,4,5,6,7,9,8,7,6,6)
)
runchart(df)
}
