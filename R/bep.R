#' Break even point units 
#' 
#' Calculate BEP in units 
#'
#' @param variable_cost 
#' @param fixed_cost 
#' @param price 
#'
#' @return
#' @export
#'
#' @examples
bep_units <- function(
  variable_cost = '', fixed_cost = '', price = ''
  ) {
  
  CM <- price - variable_cost
  
  fixed_cost / CM 
  
}

#' Break even point dollars  
#' 
#' Calculate BEP in dollars  
#'
#' @param variable_cost 
#' @param fixed_cost 
#' @param price 
#'
#' @return
#' @export
#'
#' @examples
bep_dollars <- function(
   variable_cost = '', fixed_cost = '', price = ''
) {
  
  CM <- price - variable_cost
  
  (fixed_cost / CM) * price 
  
}