## R in console and on server

+ <http://thecoatlessprofessor.com/programming/working-with-r-on-a-cluster/>
	- A article about R console commands

## R notes

+ <http://mgimond.github.io/ES218/Week02b.html>
	- Two dots `..` tells the function to get out of the current folder (i.e. moving up a directory) before proceeding down into the working folder.

+ match

+ `reshape2`
	- melt(\<data>, level = \<level>)

+ Plot
	- substitute(paste(\<expressions here>),list(\<name = values>)), check <http://vis.supstat.com/2013/04/mathematical-annotation-in-r/>

+ apply function
	- mapply is a multivariate version of sapply. mapply applies FUN to the first elements of each ... argument, the second elements, the third elements, and so on. Arguments are recycled if necessary.

## Rmarkdown

+ Tables: `xtable`

```{r, result = 'asis'}
library(xtable)
tab = xtable(<table>, <options>)
print(tab, <options>)
```

+ `xtable` special examples
	- no comment above table, no row numbers: `print(q1.tab, comment = FALSE, include.rownames=FALSE)`

## dplyr

<https://www.datacamp.com/courses/dplyr-data-manipulation-r-tutorial>

<http://genomicsclass.github.io/book/pages/dplyr_tutorial.html>

<https://www.r-bloggers.com/data-manipulation-with-dplyr/>

<https://github.com/tidyverse/dplyr>

+ A tip for `do.call`: `.` stands for the result before `%>%`

## ggplot2

legends: <http://www.sthda.com/english/wiki/ggplot2-legend-easy-steps-to-change-the-position-and-the-appearance-of-a-graph-legend-in-r-software>

jitters: <http://ggplot2.tidyverse.org/reference/geom_jitter.html>
