g <- function(df){
  a <- graph_from_data_frame(df, vertices=unique(c(df$V1, df$V2)), directed=F)
  b <- edge.betweenness.community (a, weights = E(a)$weight,
                                   directed = FALSE, edge.betweenness = TRUE, merges = TRUE,
                                   bridges = TRUE, modularity = TRUE, membership = TRUE)
  plot(b,a)
}