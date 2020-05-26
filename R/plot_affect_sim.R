Rcpp::sourceCpp(file = "./src/affect_sim.cpp")

plot_affect_sim <- function(k = c(0, 1, 3), col = c("#E69F00", "#CC79A7", "#009E73"), t = 3000,
                     i0 = 0.08, beta = 1, gamma = 0.5) {
  if(length(k) != length(col)) {
    stop("You need to specify the color for each value of k.")
  }
  
  for(i in 1:length(k)){
    my_df <- affect_sim(s0 = 1 - i0, i0 = i0, beta = beta, gamma = gamma, k = k[i], t = t)
    points(x = seq(0, 100, length.out = t), y = my_df$r, col = col[i], cex = 0.5)
  }
}