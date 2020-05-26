base::source(file = "./R/plot_set.R")
base::source(file = "./R/plot_traj_comp.R")
Rcpp::sourceCpp(file = "./src/sir_euler.cpp")

png(filename = "./images/comptest.png", units = "px", width = 1600, height = 1600, res = 300)

plot_set()

plot_traj_comp(k = c(0, 1), beta = 1)

dev.off()