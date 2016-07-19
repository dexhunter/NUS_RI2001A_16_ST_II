ud <- function(df){
  #df[1:2] <- t( apply(df[1:2], 1, sort) )
  out <- df[duplicated(df[1:2]),]
  out[3] <- NULL
  # write.table(out, file="D:/out.txt", sep=" ", row.names=FALSE, col.names = FALSE)
  return (out)
}


