library(tidyverse)
library(nlme)
library(table1)
library(gtsummary)
library(car)
library(contrast)
library(AICcmodavg)

df <- read_csv("nursebp.csv")
expomod <- gls(SYS ~ DAY+FH123+HAP+MNACT5+POSTURE+PHASE+STR+HAP+TIR+AGE, corr=corExp(form= ~ timepass | SNUM), 
               data = df %>% drop_na())
summary(expomod) 