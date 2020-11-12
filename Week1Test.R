base <- read.csv("hw1_data.csv")
colnames(base)
base[1:2,]
nrow(base)
base[152:153,]
base$Ozone[47]
base[47,]
sum(is.na(base$Ozone))
table(base$Ozone)
mean(base$Ozone, na.rm = TRUE)


base2 <- base[base[,"Ozone"] > 31,]
base3 <- base2[base2[,"Temp"] > 90,]
buenos <- complete.cases(base3)
base4 <- base3[buenos,]
mean(base4$Solar.R)

base5 <- base[base[,"Month"] == 6,]

base6 <- base[base[,"Month"] == 5,]



base[base[,"Ozone"] > 31 & base[, "Temp"] > 90,]
