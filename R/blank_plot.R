blank_plot <- function() {
  par(bg = "#2C2C2E", fg = "#F2F2F7", col.axis = "#F2F2F7", col.lab = "#F2F2F7",
      mar = c(4.5, 4.5, 1, 1), las = 1, bty = "o", xaxt = "n", yaxt = "n")
  plot(1, type = "n", xlim = c(0, 1), ylim = c(0, 1), xlab = "S", ylab = "I", cex.lab = 1.5)
  axis(side = 1, at = seq(0, 1, 0.2), labels = c("0", "", "", "", "", "N"), tck = -0.025)
  axis(side = 2, at = seq(0, 1, 0.2), labels = c("0", "", "", "", "", "N"), tck = -0.025)
  segments(x0 = 0, y0 = 1, x1 = 1, y1 = 0, lty = 2, lwd = 2, col = "#8E8E93")
  segments(x0 = 0, y0 = 0, x1 = 1, y1 = 0, lwd = 10, col = "#B3B3B380")
  segments(x0 = 0, y0 = 0, x1 = 1, y1 = 0, lwd = 5, col = "#F2F2F7")
}