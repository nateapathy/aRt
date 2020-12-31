# import list of hex colors from Wikipedia list
# https://en.wikipedia.org/wiki/List_of_colors:_A%E2%80%93F
library(rvest)

pgs <- c("https://en.wikipedia.org/wiki/List_of_colors:_A%E2%80%93F", # A - F
         "https://en.wikipedia.org/wiki/List_of_colors:_G%E2%80%93M", # G - M
         "https://en.wikipedia.org/wiki/List_of_colors:_N%E2%80%93Z") # N - Z

hex_colors <- list()

for (i in c(1:3)) {
  hex_colors[[i]] <- read_html(pgs[i]) %>% 
    html_nodes("table") %>%
    .[1] %>% html_table(fill=T) %>%
    as.data.frame()
}

hex_colors <- bind_rows(hex_colors) %>% select(c(1:2))

colnames(hex_colors) <- c("color_name","hex_rgb")

save(hex_colors,file="data/hex_colors.rda")
