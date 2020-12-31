library(mathart) # devtools::install_github("marcusvolz/mathart")
library(ggart) # devtools::install_github("marcusvolz/ggart")
library(ggforce)
library(Rcpp)
library(tidyverse)
points <- mathart::points
result <- kdtree(points)
p1 <- ggplot() +
  geom_segment(aes(x, y, xend = xend, yend = yend), result) +
  coord_equal() +
  xlim(0, 10000) + ylim(0, 10000) +
  theme_blankcanvas(bg_col = "#fafafa", margin_cm = 0)
# save plot
ggsave("examples/ex3_kdtree.png", p1, width = 20, height = 20, units = "in")
