#calculate the total amount of nodes
tot <- function(data)
{
    return(length(unique(unlist(data[1:2]))))
}
