\name{setlabels}
\alias{setlabels}
\title{ Add descriptive column labels on a data.table }
\description{
\code{setlabels} adds descriptive labels to a \code{data.table} and marks it as labeled with an
attribute \code{col.labels}. The column labels support spaces and special characters. 

These labels can help when the column names are not appropriate for comunicating the content of the columns. Labels with special characters, for example "°C" or with spaces like "Cylinder Pressure" are not suitable for column names.
}
\usage{
setlabels(x, verbose=getOption("datatable.verbose"), physical = TRUE)
setkeyv(x, cols, verbose=getOption("datatable.verbose"), physical = TRUE)
setindex(\dots)
setindexv(x, cols, verbose=getOption("datatable.verbose"))
key(x)
indices(x, vectors = FALSE)
haskey(x)
}
\arguments{
\item{x}{ A \code{data.table}. }
\item{collabels}{ A character vector of column labels. }
}
\examples{
DT = data.table(
    ID = c("b","b","b","a","a","c"),
    a = 1:6,
    b = 7:12,
    c = 13:18
)
collabels <- c("ID Column", "Col A", "Col B", "Col C")
setlabels(DT, collabels = collabels)
print(DT, col.labels = TRUE)
fwrite(DT, file = "test.csv", yaml = TRUE)
}
