blank_plot_affect <- function() {
  par(bg = "#2C2C2E", fg = "#F2F2F7", col.axis = "#F2F2F7", col.lab = "#F2F2F7",
      mar = c(4.5, 4.5, 1, 1), las = 1, bty = "o", xaxt = "s", yaxt = "s")
  plot(1, type = "n", xlim = c(0, 100), ylim = c(0, 1), 
       xlab = "time", ylab = "% affected", cex.lab = 1.5)
}