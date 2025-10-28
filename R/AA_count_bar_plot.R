#' Amino Acid count bar plot
#'
#' Create a bar chart of character frequencies (e.g., amino acids) in a single
#' sequence string. Splits the string into individual characters, counts unique
#' occurrences, and returns a ggplot object.
#' @import ggplot2, stringr
#'
#' @param sequence character (length 1). The input sequence to analyze,
#'   typically a one-letter amino acid string (e.g., "MALWMRLLPLL").
#'
#' @return A ggplot object showing counts per unique character in the sequence.
#' @export
#'
#' @examples
AA_plot <- function(sequence){

  # Split the sequence into individual characters (amino acids),
  # convert to character vector, and keep only the unique letters
  unique_amino_acids <- sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # For each unique amino acid, count how many times it occurs in the full sequence
  counts <- sapply(unique_amino_acids, function(amino_acid) stringr::str_count(string = sequence, pattern =  amino_acid)) |>
    as.data.frame()

  # Rename the count column and move amino acid names into their own column
  colnames(counts) <- c("Counts")
  counts[["sequence"]] <- rownames(counts)

  # Create a bar plot of amino acid counts using ggplot2
  amino_acid_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = sequence, y = Counts, fill = sequence)) +
    ggplot2::geom_col() + # draw bars proportional to counts
    ggplot2::theme_bw() + # apply a clean black-and-white theme
    ggplot2::theme(legend.position = "none") # remove redundant color legend

  # Return the ggplot object so it can be printed or further customized
  return(amino_acid_plot)
}
