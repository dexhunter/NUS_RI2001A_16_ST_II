g <- function(df){
  a <- graph_from_data_frame(df, vertices=unique(c(df$V1, df$V2)), directed=F)
  b <- edge.betweenness.community (a, weights = E(a)$weight,
                                   directed = FALSE, edge.betweenness = TRUE, merges = TRUE,
                                   bridges = TRUE, modularity = TRUE, membership = TRUE)
  plot(b,a)
}
#please update graph one by a time 
g(G1)
g(G2)
g(G3)

#Maybe Prof.Hon Wai could raise the difficulty of the course next time, I feel like wasting 10 days listening only to some math tricks and puzzles while learning hardly anything new. I was planned to learn how to tackle big data problem but sadly only learned some basic usage of R which could be learned by myself online.