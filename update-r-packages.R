oldpkgs = list.files("/Library/Frameworks/R.framework/Versions/3.3/Resources/library")
current = list.files("/Library/Frameworks/R.framework/Versions/3.4/Resources/library")
save(current,file = "git-local/current.rda")

install.packages(setdiff(oldpkgs, current))

# win
oldpkgs.win = list.files("C:/Program Files/R/R-3.3.2/library")
current.win = list.files("C:/Program Files/R/R-3.4.1/library")
setdiff(oldpkgs.win, current.win)
setwd("D:/git-local")
load("current.rda")
library("dplyr")
install.packages(setdiff(current, current.win))
