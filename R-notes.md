## R in console and on cluster

+ <http://thecoatlessprofessor.com/programming/working-with-r-on-a-cluster/>
	
	- A article about R console commands
	
+ For lsf scheduler:

  + `cores <- as.numeric(Sys.getenv('LSB_DJOB_NUMPROC'))`

    https://www.hpc.dtu.dk/?page_id=2723

## R notes

+ <http://mgimond.github.io/ES218/Week02b.html>
	
- Two dots `..` tells the function to get out of the current folder (i.e. moving up a directory) before proceeding down into the working folder.
	
+ `match`

+ `reshape2`
- `melt(\<data>, level = \<level>)`
+ R base plot
	
- `substitute(paste(\<expressions here>),list(\<name = values>)) `<http://vis.supstat.com/2013/04/mathematical-annotation-in-r/>
+ apply function
	
	- mapply is a multivariate version of sapply. mapply applies FUN to the first elements of each ... argument, the second elements, the third elements, and so on. Arguments are recycled if necessary.
	
+ Install package

  + `00LOCK-<package>` folder in R package location

    indicates `<package>` didn't install successfully, can be deleted once found

## Rmarkdown

+ Tables: `xtable`

```{r, result = 'asis'}
library(xtable)
tab = xtable(<table>, <options>)
print(tab, <options>)
```

+ `xtable` special examples
	- no comment above table, no row numbers: `print(q1.tab, comment = FALSE, include.rownames=FALSE)`
+ R script to markdown: https://rmarkdown.rstudio.com/articles_report_from_r_script.html

## Tidyverse

Fast row-wise iteration: `purrr::pmap+as.list`

​	https://rpubs.com/wch/200398

Usage of `dplyr::filter` 

​	https://suzan.rbind.io/2018/02/dplyr-tutorial-3/#filter-if

### dplyr

<https://www.datacamp.com/courses/dplyr-data-manipulation-r-tutorial>

<http://genomicsclass.github.io/book/pages/dplyr_tutorial.html>

<https://www.r-bloggers.com/data-manipulation-with-dplyr/>

<https://github.com/tidyverse/dplyr>

+ A tip for `do.call`: `.` stands for the result before `%>%`
+ Shortcut for the pipe operator `%>%`: `command + shift + M`

### ggplot2

legends: <http://www.sthda.com/english/wiki/ggplot2-legend-easy-steps-to-change-the-position-and-the-appearance-of-a-graph-legend-in-r-software>

jitters: <http://ggplot2.tidyverse.org/reference/geom_jitter.html>

### tidyr

+ Each __variable__ in its own __column__
+ Each __case__ in its own __row__
+ Each __value__ in its own __cell__

+ `gather()`: argument `key` are column names, and `value` are data in those specific columns

## rvest

R package for web scraping

<https://blog.rstudio.com/2014/11/24/rvest-easy-web-scraping-with-r/>

## ggmap

retrieve raster map tiles from popular online mapping services like Google Maps

<https://github.com/dkahle/ggmap>
