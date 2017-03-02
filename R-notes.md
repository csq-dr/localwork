## R notes

+ <http://mgimond.github.io/ES218/Week02b.html>
	- Two dots `..` tells the function to get out of the current folder (i.e. moving up a directory) before proceeding down into the working folder.

+ match

+ `reshape2`
	- melt(\<data>, level = \<level>)

+ Plot
	- substitute(paste(\<expressions here>),list(\<name = values>)), check <http://vis.supstat.com/2013/04/mathematical-annotation-in-r/>

## Rmarkdown

+ Tables: `xtable`

```{r, result = 'asis'}
library(xtable)
tab = xtable(<table>, <options>)
print(tab, <options>)
```

+ `xtable` special examples
	- no comment above table, no row numbers: `print(q1.tab, comment = FALSE, include.rownames=FALSE)`
