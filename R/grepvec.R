#' MySQL table: glove
#' Origianl data downloaded from glove website,glove.840B.300d_db.txt
#' Word filtering is case-sensitive.
#' @param myword: a word
#' @return a vector represents the word
#' @examples grepvec("the")


grepvec<-function(myword){
  library(RMySQL)
  mysource <- src_mysql("glove",user="root",password = "240908teq")
  vector_return <- mysource %>% tbl(from = "GLOVE_PRETRAINED") %>% filter(word==myword) %>% collect()
  vector_result <- vector_return$vector
  return(vector_result)
}
