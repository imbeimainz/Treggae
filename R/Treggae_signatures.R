


#' Get all signatures
#'
#' Obtain a list with all signatures contained in Treggae
#'
#' @return A list object
#' @export
#'
#' @examples
#' all_sigs <- get_signatures()
#' all_sigs$Skin_Tregs_signature
#'
get_signatures <- function() {
  sig_file <- system.file("extdata", "Treggae_signatures.rds", package = "Treggae")

  sig_list <- readRDS(sig_file)

  return(sig_list)
}


#' Get a single signatures
#'
#' Gets a single signature among the ones provided in Treggae
#'
#' @param signature_name Character string, corresponding to the name of the
#' signature one wants to access
#'
#' @return A character vector
#'
#' @export
#'
#' @examples
#'
#' get_signature("Skin_Tregs_signature")
#'
get_signature <- function(signature_name) {
  sig_file <- system.file("extdata", "Treggae_signatures.rds", package = "Treggae")

  sig_list <- readRDS(sig_file)

  if(!signature_name %in% names(sig_list))
    stop("Signature name not found. Please use one of:\n", paste(names(sig_list), collapse = ", "))

  this_sig <- sig_list[[signature_name]]

  return(this_sig)
}


#' List all signatures
#'
#' List all signatures available in Treggae with a compact summary
#'
#' @return Invisible NULL. Prints a summary as a message
#' @export
#'
#' @examples
#' list_signatures()
#'
list_signatures <- function() {
  sig_file <- system.file("extdata", "Treggae_signatures.rds", package = "Treggae")

  sig_list <- readRDS(sig_file)

  sig_names <- names(sig_list)

  sig_lengths <- unlist(lapply(sig_list, length))

  sig_message <- ""

  for(i in seq_along(sig_names)) {
    sig_message <- c(sig_message,
                     sig_names[i], " --- ", sig_lengths[i], " members\n")
  }

  message("Treggae signatures: \n------\n",
          "  Providing a total of ", length(sig_list), " signatures: \n",
          sig_message,
          "\nYou can access the individual signatures by using the ",
          "`get_signatures()` or `get_signature()` functions")

  invisible(NULL)
}
