## R notes

+ <http://mgimond.github.io/ES218/Week02b.html>
	- Two dots `..` tells the function to get out of the current folder (i.e. moving up a directory) before proceeding down into the working folder.
	
## Rmarkdown

+ Tables: `xtable`

```{r, result = 'asis'}
library(xtable)
tab = xtable(<table>, <options>)
print(tab, <options>)
```

+ `xtable` special examples
	- no comment above table, no row numbers: `print(q1.tab, comment = FALSE, include.rownames=FALSE)`