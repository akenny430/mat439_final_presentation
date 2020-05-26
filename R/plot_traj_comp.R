Rcpp::sourceCpp(file = "./src/sir_euler.cpp")

plot_traj_comp <- function(beta = 1, gamma = 0.5, k = c(0, 1), t = 3000, col = "#CC79A7") {
  segments(x0 = 0, y0 = 0, x1 = 1, y1 = 0, lwd = 10, col = "#B3B3B380")
  
  my_int = list(c(0.96, 0.04), c(0.92, 0.08), c(0.88, 0.12))
  for(i in 1:3) {
    my_df <- sir_euler(s0 = my_int[[i]][1], i0 = my_int[[i]][2], 
                       beta = beta, gamma = gamma, k = k[1], t = t)
    points(x = my_df$s, y = my_df$i, col = "#48484A", cex = 0.5)
  }
  
  for(i in 1:3) {
    my_df <- sir_euler(s0 = my_int[[i]][1], i0 = my_int[[i]][2], 
                       beta = beta, gamma = gamma, k = k[2], t = t)
    points(x = my_df$s, y = my_df$i, col = col, cex = 0.5)
    points(x = my_int[[i]][1], y = my_int[[i]][2], col = "#F2F2F7", pch = 18)
  }
  segments(x0 = 0, y0 = 0, x1 = 1, y1 = 0, lwd = 5, col = "#F2F2F7")
}