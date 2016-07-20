```
ud <- function(df){
  df[1:2] <- t( apply(df[1:2], 1, sort) )
<<<<<<< HEAD
  out <- duplicated(df[1:2],fromLast=TRUE) #hash function
=======
  out <- df[duplicated(df[1:2]),] #hash function
>>>>>>> origin/master
  out[3] <- NULL #this line can be integrated into the above
  write.table(out, file="D:/out.txt", sep=" ", row.names=FALSE, col.names = FALSE)
  #return (out)
}
```
#new version below

ud <- function(df){
  out <- df[duplicated(df[1:2]),]
  write.table(out[1:2], file="D:/out88.txt", sep=" ", row.names=FALSE, col.names = FALSE)
}




