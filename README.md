## cmu.textstat

The **cmu.textstat** package is for use in the **36-468/668** course (Special Topics in Statistics & Data Science) at Carnegie Mellon University.

## Installing cmu.textstat

Use devtools to install the package.

```r
devtools::install_github("browndw/cmu.textstat")
```
## Running cmu.textstat

The package itself serves primarily as wrapper for 4 other packages, which **will install automatically** when you install **cmu.textstat**:

1. [quanteda.extras](https://cmu-textstat-docs.readthedocs.io/en/latest/quanteda.extras/quanteda.extras.html)
2. [ngramr.plus](https://cmu-textstat-docs.readthedocs.io/en/latest/ngramr.plus/ngramr.plus.html)
3. [vnc](https://cmu-textstat-docs.readthedocs.io/en/latest/vnc/vnc.html)
4. [mda.biber](https://cmu-textstat-docs.readthedocs.io/en/latest/mda.biber/mda.biber.html)

When you load the **cmu.textstat** library, those 4 other packages will attach, giving you access to all of their functions.

```r
library(cmu.textstat)
```

The documentation for the package is available on [readthedocs](http://cmu-textstat-docs.readthedocs.io/).
