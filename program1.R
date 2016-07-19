tot <- function(data)
{
    return(length(unique(unlist(data[1:2]))))
}

#calculate the average in&out-degree
avg <- function(data)
{
  tot<-tot(data)
  s<-length(t(data[1]))
  return(s/tot)
}