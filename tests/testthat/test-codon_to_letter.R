test_that("codon_to_letter traduce correttamente i codoni", {
  codons <- c("AUG", "UUU", "GGC")
  expect_equal(codon_to_letter(codons), "MFG")
})
