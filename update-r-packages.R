oldpkgs = list.files("/Library/Frameworks/R.framework/Versions/3.3/Resources/library")
current = list.files("/Library/Frameworks/R.framework/Versions/3.4/Resources/library")
install.packages(setdiff(oldpkgs, current))
