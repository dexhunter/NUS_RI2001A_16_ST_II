```
#sort first and find duplicated ones
ud <- function(df){
  df[1:2] <- t( apply(df[1:2], 1, sort) )
  out <- duplicated(df[1:2],fromLast=TRUE)
  write.table(out[1:2], file="D:/out.txt", sep=" ", row.names=FALSE, col.names = FALSE)
}
```
#new version below

ud <- function(df){
  out <- df[duplicated(df[1:2]),]
  write.table(out[1:2], file="D:/out.txt", sep=" ", row.names=FALSE, col.names = FALSE)
}




