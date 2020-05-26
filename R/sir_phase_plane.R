base::source(file = "./R/blank_plot.R")
base::source(file = "./R/blank_plot_affect.R")
base::source(file = "./R/plot_set.R")
base::source(file = "./R/plot_set_peak.R")
base::source(file = "./R/plot_traj_solo.R")
base::source(file = "./R/plot_traj_comp.R")
base::source(file = "./R/plot_affect_sim.R")



# making a blank plot

png(filename = "./images/blank.png", units = "px", width = 1600, height = 1600, res = 300)

blank_plot()

dev.off()



# basic plot with beta = 1, gamma = 0.4, k = 0

png(filename = "./images/basic.png", units = "px", width = 1600, height = 1600, res = 300)

plot_set()

plot_traj_solo()

dev.off()



# comparing k = 0 and k = 1 (linear)

png(filename = "./images/comp_linear.png", units = "px", width = 1600, height = 1600, res = 300)

plot_set()

plot_traj_comp(k = c(0, 1))

dev.off()



# comparing k = 0 and k = 3 (non-linear)

png(filename = "./images/comp_nlinear.png", units = "px", width = 1600, height = 1600, res = 300)

plot_set()

plot_traj_comp(k = c(0, 3), col = "#009E73")

dev.off()



# plotting different peak values

my_peak = c(0.1, 0.2, 0.4, 0.6, 0.8, 0.9)

for(i in 1:6){
  
  this_file = paste0("./images/peak0", i, ".png")
  png(filename = this_file, units = "px", width = 1600, height = 1600, res = 300)
  
  plot_set_peak(my_peak[i])
  
  plot_traj_solo(beta = 0.5/my_peak[i])
  
  dev.off()
}



# simulating people affected

my_time <- 3000

png(filename = "./images/affect_sim.png", units = "px", width = 1600, height = 1600, res = 300)

blank_plot_affect()

plot_affect_sim(beta = 1, gamma = 0.5)

dev.off()