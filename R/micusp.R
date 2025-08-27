#' Mini excerpt of MICUSP
#'
#' 170 documents from the Michigan Corpus of Upper-Level Student Papers.
#'
#' @format
#' \describe{
#' \item{doc_id}{Document ID (from MICUSP). First three characters give the document category.}
#' \item{text}{Full text of the student paper}
#' }
#' @seealso [micusp_meta]
"micusp_mini"

#' MICUSP metadata
#'
#' Metadata for the documents from MICUSP, including those provided in
#' `micusp_mini`.
#'
#' @format
#' \describe{
#' \item{doc_id}{Document ID}
#' \item{paper_title}{Title}
#' \item{paper_discipline}{Which academic discipline the paper was written for}
#' \item{student_level}{Level of the student who wrote the paper}
#' \item{discipline_cat}{Discipline category code}
#' \item{level_cat}{Student level code}
#' \item{student_gender}{Gender of the student author}
#' \item{speaker_status}{Whether the student is a native English speaker (NS) or non-native speaker (NNS)}
#' \item{speaker_l1}{If nonnative English speaker, the student's first language}
#' \item{paper_type}{Type of paper (e.g., report, research paper, etc.)}
#' \item{paper_features}{Comma-separated list of structural features in the paper}
#' }
#' @seealso [`micusp_mini`]
"micusp_meta"
