% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/haven.R
\name{read_xpt}
\alias{read_xpt}
\alias{write_xpt}
\title{Read and write SAS transport files}
\usage{
read_xpt(file)

write_xpt(data, path, version = 8)
}
\arguments{
\item{file}{Either a path to a file, a connection, or literal data
(either a single string or a raw vector).

Files ending in \code{.gz}, \code{.bz2}, \code{.xz}, or \code{.zip} will
be automatically uncompressed. Files starting with \code{http://},
\code{https://}, \code{ftp://}, or \code{ftps://} will be automatically
downloaded. Remote gz files can also be automatically downloaded and
decompressed.

Literal data is most useful for examples and tests. It must contain at
least one new line to be recognised as data (instead of a path).}

\item{data}{Data frame to write.}

\item{path}{Path to a file where the data will be written.}

\item{version}{Version of transport file specification to use: either 5 or 8.}
}
\value{
A tibble, data frame variant with nice defaults.

  Variable labels are stored in the "label" attribute of each variable.
  It is not printed on the console, but the RStudio viewer will show it.
}
\description{
The SAS transport format is a open format, as is required for submission
of the data to the FDA.
}
\examples{
tmp <- tempfile(fileext = ".xpt")
write_xpt(mtcars, tmp)
read_xpt(tmp)
}
