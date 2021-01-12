library(lpSolve)

# Maximize 20B + 30C
# Constraints -- Subject to: 
# B=Bearings C=Channels
# Departments
# 3B+2C<=16Machine
# 1B+3C<=12Plate
# 2B+2C<=6Polish

# const.mat : One row per constraint; one column per variable
# const.dir Vector of character strings giving direction of the constraint 
# const.rhs Vector of numeric constraints for RHS 

f.type <- 'max'
f.obj <- c(20, 30)
f.con <- matrix(c(3, 2, 1, 3, 2, 2), nrow = 3, byrow = TRUE)
f.dir <- c('<=', '<=', '<=')
f.rhs <- c(16, 12, 6)

lp(f.type, f.obj, f.con, f.dir, f.rhs)
