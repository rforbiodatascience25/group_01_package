#' Generate a random nucleotide sequence given a size input
#'
#' @param seq_size the length of the sequence to generate
#'
#' @returns nucleotide sequence as string
#' @export
#'
#' @examples
generate_nucleotides <- function(seq_size){
  seq_divided <- sample(c("A", "T", "G", "C"), size = seq_size, replace = TRUE)
  seq <- paste0(seq_divided, collapse = "")
  return(seq)
}
