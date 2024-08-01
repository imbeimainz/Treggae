test_that("Loading signatures works", {
  all_sigs <- get_signatures()
  expect_type(all_sigs, "list")

  one_sig <- get_signature("Core_Signature")
  expect_type(one_sig, "character")

  expect_error(get_signature("AnySignature"))
})

test_that("Summary of signatures works", {
  expect_message(list_signatures())
})
