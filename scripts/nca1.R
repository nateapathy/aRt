library(tidyverse)
library(jasmines)
library(ambient)
use_seed(5989) %>%
  scene_discs(
    rings = 5, points = 10000, size = 5
  ) %>%
  mutate(ind = 1:n()) %>%
  unfold_warp(
    iterations = 5,
    scale = .5, 
    output = "layer" 
  ) %>%
  unfold_tempest(
    iterations = 4,
    scale = 0.08
  ) %>%
  style_ribbon(
    #palette = palette_manual(sample(hex_colors$hex_rgb,5)), # seed also applies here
    palette = "davos",
    colour = "ind",
    alpha = c(.1,.1),
    background = "white"
  )

ggsave(filename = "images/nca1.png")
