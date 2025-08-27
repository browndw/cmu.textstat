#' Metadata of the British Academic Written English corpus
#'
#' Description of each piece of student writing in the British Academic Written
#' English (BAWE) corpus.
#'
#' @references BAWE, <http://www.coventry.ac.uk/bawe>
#' @format A data frame with 2,761 observations of the following variables:
#' \describe{
#' \item{doc_id}{Document ID}
#' \item{paper_discipline}{Academic discipline of the paper}
#' \item{student_id}{Four-digit student identifier}
#' \item{student_level}{Level of the student (year 1-4 of undergrad, or unknown)}
#' \item{student_gender}{Gender of the student}
#' \item{student_yob}{Year of birth of the student}
#' \item{speaker_l1}{First language of the student}
#' \item{student_edu}{Where the student's secondary education (not including university) was. UKa = all in the UK, OSa = all overseas, UK + digits = that many years (but not all) in UK.}
#' \item{paper_type}{Type of assignment (possibly multiple categories, separated by `+`)}
#' \item{paper_date}{Date of writing (YYYY-mm)}
#' \item{module_title}{Title of the course (module), as provided by student or university course directory}
#' \item{module_code}{Code (ID) of the course (module), as defined by the university}
#' \item{module_discipline}{Discipline of the course}
#' \item{disciplinary_group}{Discipline of the course, grouped into several broad categories}
#' \item{paper_grade}{Grade of the paper. M = merit, 60-69%; D = distinction, 70-100%.}
#' \item{number_of_authors}{Number of students involved in writing the assignment}
#' \item{paper_tokens}{Number of tokens in the paper}
#' \item{paper_sent}{Number of sentences}
#' \item{paper_par}{Number of paragraphs}
#' \item{paper_tables}{Number of tables}
#' \item{paper_figures}{Number of figures}
#' \item{paper_blockquotes}{Number of blockquotes}
#' \item{paper_formulae}{Number of formulas}
#' \item{paper_lists}{Number of lists}
#' \item{paper_paraslist}{Number of paragraphs in lists (?)}
#' \item{abstract_present}{Whether the paper has an abstract}
#' \item{tokens_per_sent}{Average number of tokens per sentence}
#' \item{sent_per_par}{Average number of sentences per paragraph}
#' \item{paper_assignment}{Whether the assignment is simple (one task) or compound (involves multiple units, such as a group of short answers)}
#' }
"bawe_meta"
