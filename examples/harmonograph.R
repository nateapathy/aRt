library(mathart)
df1 <- harmonograph(A1 = 1, A2 = 1, A3 = 1, A4 = 1,
                    d1 = 0.004, d2 = 0.0065, d3 = 0.008, d4 = 0.019,
                    f1 = 3.001, f2 = 2, f3 = 3, f4 = 2,
                    p1 = 0, p2 = 0, p3 = pi/2, p4 = 3*pi/2) %>% mutate(id = 1)

df2 <- harmonograph(A1 = 1, A2 = 1, A3 = 1, A4 = 1,
                    d1 = 0.0085, d2 = 0, d3 = 0.065, d4 = 0,
                    f1 = 2.01, f2 = 3, f3 = 3, f4 = 2,
                    p1 = 0, p2 = 7*pi/16, p3 = 0, p4 = 0) %>% mutate(id = 2)

df3 <- harmonograph(A1 = 1, A2 = 1, A3 = 1, A4 = 1,
                    d1 = 0.05, d2 = -0.009, d3 = -.01, d4 = .004,
                    f1 = 12, f2 = 3, f3 = 3, f4 = 1,
                    p1 = -1, p2 = 3*pi/2, p3 = pi/3, p4 = 1) %>% mutate(id = 3)

df4 <- harmonograph(A1 = 1, A2 = 1, A3 = 1, A4 = 1,
                    d1 = 0.04, d2 = 0.04, d3 = 0.04, d4 = 0.04,
                    f1 = 2, f2 = 2, f3 = 1, f4 = 3,
                    p1 = pi/16, p2 = 3*pi/2, p3 = 9*pi/16, p4 = pi) %>% mutate(id = 4)

ggplot() +
  geom_path(aes(x, y), df4, alpha = 0.25, size = 0.5) +
  coord_equal() +
  facet_wrap(~id, nrow = 2) +
  theme_blankcanvas(margin_cm = 0)

ggsave("examples/harmonograph01.png", p, width = 20, height = 20, units = "cm")
