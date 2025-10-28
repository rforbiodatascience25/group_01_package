#' Changing DNA into RNA
#'
#' This function takes one or more DNA sequences and replaces all thymine (T) bases with uracil (U), converting the sequence(s) into RNA form.
#'
#' @param codons A character string or character vector containing DNA sequence(s)
#' compoed of the letters A, T, C and G
#'
#' @returns A character string or character vector with all "T" bases replaced by "U".
#'
#' @export
#'
#' @examples
#' dna_to_rna("ATTGCT")
#' dna_to_rna(c("TTTAAA", "GGGCCC"))
dna_to_rna <- function(codons){
  subs_T_to_U <- gsub("T", "U", codons)
  return(subs_T_to_U)
}
