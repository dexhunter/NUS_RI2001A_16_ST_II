ud <- function(df){
  #df[1:2] <- t( apply(df[1:2], 1, sort) )
  out <- df[duplicated(df[1:2]),] #hash function
  out[3] <- NULL #this line can be integrated into the above
  write.table(out, file="D:/out.txt", sep=" ", row.names=FALSE, col.names = FALSE)
  #return (out)
}


