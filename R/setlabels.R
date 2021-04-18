setlabels <- function(x, collabels) {
    data.table::setattr(x, "labels", collabels)
}