# load testthat package
library("testthat")

test_that("codon_splitter returns correct codons for a standard sequence", {
  result <- codon_splitter("ATGGCTTGA")
  expect_equal(result, c("ATG", "GCT", "TGA"))
})

test_that("codon_splitter handles lowercase input correctly", {
  result <- codon_splitter("atggcttga")
  expect_equal(result, c("atg", "gct", "tga"))
})

test_that("codon_splitter handles sequences not divisible by 3", {
  result <- codon_splitter("ATGGCTTG")
  expect_equal(result, c("ATG", "GCT"))
})
