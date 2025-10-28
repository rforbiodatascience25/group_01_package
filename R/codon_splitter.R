#' Split a Nucleotide Sequence into Codons
#'
#' This function takes a nucleotide sequence (DNA or RNA) and splits it into codons,
#' which are groups of three consecutive nucleotides. It allows specifying the reading
#' frame by adjusting the starting position.
#'
#' @param nucleotide_string A character string representing a nucleotide sequence (e.g., "ATGGCTTGA").
#' @param start An integer specifying the starting position for reading frame (default is 1).
#'   Valid values are 1, 2, or 3.
#'
#' @return A character vector of codons (triplets) extracted from the input sequence.
#' @export
#'
#' @examples
#' # Default reading frame
#' codon_splitter("ATGGCTTGA")
#' #> [1] "ATG" "GCT" "TGA"
#'
#' # Using a different reading frame
#' codon_splitter("ATGGCTTGA", start = 2)
#' #> [1] "TGG" "CTT"
codon_splitter <- function(nucleotide_sequence, start = 1){
  sequence_length <- nchar(nucleotide_sequence)
  codons <- substring(
    nucleotide_sequence,
    first = seq(from = start, to = sequence_length - 3 + 1, by = 3),
    last  = seq(from = 3 + start - 1, to = sequence_length, by = 3)
  )
  return(codons)
}
