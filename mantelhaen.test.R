if(!require(dplyr)){install.packages("dplyr")}
if(!require(DescTools)){install.packages("DescTools")}
if(!require(ggplot2)){install.packages("ggplot2")}
if(!require(grid)){install.packages("grid")}
if(!require(vcd)){install.packages("vcd")}


#Figure 5b
#ds2181 (dsEcK2) feed before injection
sperm_assay <-
  array(c(17, 16, 2, 6,
          19, 6, 19, 2,
          17, 4, 14, 2),
        dim = c(2, 2, 3),
        dimnames = list(
          dsRNA = c("dsGFP", "ds2181"),
          Response = c("sperm", "No_sperm"),
          rep = c("1", "2", "3")))

#check the matrix array
sperm_assay
# Cochran-Mantel-Haenszel test
mantelhaen.test(sperm_assay)


#Figure 5c top
#ds2181 (dsEcK2) injection before feed 
ovi_assay_inj_feed <-
  array(c(2, 8, 16, 9,
          2, 10, 32, 21,
          3, 8, 20, 14,
          0, 6, 42, 25),
        dim = c(2, 2, 4),
        dimnames = list(
          dsRNA = c("dsGFP", "ds2181"),
          Response = c("ovi", "No_ovi"),
          rep = c("1", "2", "3", "4")))
#check the matrix array
ovi_assay_inj_feed
# Cochran-Mantel-Haenszel test
mantelhaen.test(ovi_assay_inj_feed)


#Figure 5c bottom
#ds2181 (dsEcK2) feed before injection
ovi_assay_feed_inj <-
  array(c(0, 0, 31, 36,
          2, 2, 18, 19,
          3, 4, 20, 17),
        dim = c(2, 2, 3),
        dimnames = list(
          dsRNA = c("dsGFP", "ds2181"),
          Response = c("ovi", "No_ovi"),
          rep = c("1", "2", "3")))

#check the matrix array
ovi_assay_feed_inj
# Cochran-Mantel-Haenszel test
mantelhaen.test(ovi_assay_feed_inj)
