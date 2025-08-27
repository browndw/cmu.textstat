#' Federalist papers
#'
#' Contains the full text of the 85 Federalist Papers.
#'
#' @seealso [federalist_meta]
#' @format
#' \describe{
#' \item{doc_id}{Document ID, giving the number of the Federalist paper}
#' \item{text}{Full text of the paper}
#' }
"federalist_papers"

#' Federalist paper metadata
#'
#' Metadata for each Federalist Paper, including the author, title, and date (if known).
#'
#' @seealso [federalist_papers]
#' @format
#' \describe{
#' \item{doc_id}{Document ID, giving the number of the Federalist paper}
#' \item{author_id}{Author: Hamilton, Madison, Jay, `Hamilton_Madison` (collaboration of both), or Disputed}
#' \item{title}{Original title}
#' \item{date}{Original date, if available}
#' }
"federalist_meta"
