#' Convert Codons to Amino Acid Sequence
#'
#' This function translates a vector of codons into the corresponding
#' one-letter amino acid sequence.
#'
#' @param codons A character vector of RNA codons (e.g., "AUG", "UUU", "GGC").
#'
#' @return A single string containing the one-letter amino acid sequence.
#' @export
#'
#' @examples
#' codon_to_letter(c("AUG", "UUU", "GGC"))
#' # Returns: "MFG"
codon_to_letter <- function(codons){
 letter <- paste0(codon_table[codons], collapse = "")
  return(letter)
}
