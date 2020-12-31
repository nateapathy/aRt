library(dplyr) # or install.packages("dplyr") first
library(jasmines) # or devtools::install_github("djnavarro/jasmines")
# wont work because jasmines won't install due to rlang issue
p0 <- use_seed(100) %>% # Set the seed of R‘s random number generator, which is useful for creating simulations or random objects that can be reproduced.
  scene_discs(
    rings = 10, 
    points = 50000, 
    size = 50
  ) %>%
  mutate(ind = 1:n()) %>%
  unfold_warp(
    iterations = 10,
    scale = .5, 
    output = "layer" 
  ) %>%
  unfold_tempest(
    iterations = 5,
    scale = .01
  ) %>%
  style_ribbon(
    color = "#E0542E",
    colour = "ind",
    alpha = c(1,1),
    background = "#4D7186"
  )
ggsave("examples/ex2_p0.png", p0, width = 20, height = 20, units = "in")
