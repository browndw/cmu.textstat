## cmu.textstat

The **cmu.textstat** package is for use in the **36-468/668** course (Special Topics in Statistics & Data Science) at Carnegie Mellon University.

## Installing cmu.textstat

Use devtools to install the package.

```r
devtools::install_github("browndw/cmu.textstat")
```
## Running cmu.textstat

The package itself serves primarily as wrapper for 4 other packages, which **will install automatically** when you install **cmu.textstat**:

1. [quanteda.extras](https://github.com/browndw/quanteda.extras)
2. [ngramr.plus](https://github.com/browndw/ngramr.plus)
3. [vnc](https://github.com/browndw/vnc)
4. [mda.biber](https://github.com/browndw/mda.biber)

When you load the **cmu.textstat** library, those 4 other packages will attach, giving you access to all of their functions.

```r
library(cmu.textstat)
```
