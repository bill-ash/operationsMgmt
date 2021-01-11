#' Make book
#' 
#' Fix directories 
#'
#' @export
make_book <- function() {
  
  book_path <- system.file('bookdown', package = 'operationsMgmt')
  bookdown::render_book(
    book_path, 
    clean = TRUE, output_dir = file.path(book_path, '_bookdown.yml'),
    config_file = file.path(book_path, '_bookdown.yml')
  )
}
