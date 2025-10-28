library("testthat")
test_that("dna_to_rna correctly replaces T with U", {
  # Basic single-sequence test
  expect_equal(dna_to_rna("ATTGCT"), "AUUGCU")

  # Vector input (multiple sequences)
  expect_equal(dna_to_rna(c("TTTAAA", "GGGCCC")), c("UUUAAA", "GGGCCC"))

  # Edge case: no T in sequence
  expect_equal(dna_to_rna("AACCGG"), "AACCGG")

  # Edge case: empty input
  expect_equal(dna_to_rna(""), "")
})
