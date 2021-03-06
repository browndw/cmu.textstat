## cmu.textstat

The **cmu.textstat** package is for use in the **36-468/668** course (Special Topics in Statistics & Data Science) at Carnegie Mellon University.

## Installing cmu.textstat

Use devtools to install the package.

```r
devtools::install_github("browndw/cmu.textstat")
```
## Running cmu.textstat

The package itself serves primarily as wrapper for 4 other packages, which **will install automatically** when you install **cmu.textstat**:

1. quanteda.extras
2. ngramr.plus
3. vnc
4. mda.biber

When you load the **cmu.textstat** library, those 4 other packages will attach, giving you access to all of their functions.

```r
library(cmu.textstat)
```
The main functions in the packages associated with **cmu.textstat** are described in the table below. The functions are designed to facilitate the analysis of textual data, assisting in the exploration of questions related to language variation and change, language use, and language structure.

Many of the functions (though not all) were written to support the processes and procedures described by [Brezina in the required textbook](https://www.cambridge.org/core/books/statistics-in-corpus-linguistics/4E530F86B328B2287681AD240796D2CF), and replicate many of [his web-based statistics tools](http://corpora.lancs.ac.uk/stats/toolbox.php) in an R environment.

Many of the functions are designed to be used at the end of [a processing pipeline](https://programminghistorian.org/en/lessons/basic-text-processing-in-r). For our class, we will laregly rely on [tidyverse](https://www.tidyverse.org/) packages and [quanteda](http://quanteda.io/) for pre-processing, corpus creation, and tokenization.

<table><tbody>
<tr><td><a href=https://github.com/browndw/quanteda.extras target="_blank"><b>quanteda.extras</b></a></td>
<td></td></tr>
<tr><td><b>Pre-processing text</b> 
     </td>
<td><a href=http://htmlpreview.github.io/?https://raw.githubusercontent.com/browndw/quanteda.extras/main/vignettes/preprocess_introduction.html target="_blank">vignette</a></td>
</tr><tr><td>
     <code>preprocess_text()</code> </td>
<td>Requires <b>readtext data.frame</b>. A simple function that requires a readtext object. It then processes the text column using basic regex substitutions. </td>
</tr><td><b>Dispersion</b>
     </td>
<td><a href=http://htmlpreview.github.io/?https://raw.githubusercontent.com/browndw/quanteda.extras/main/vignettes/dispersions_introduction.html target="_blank">vignette</a></td>
</tr><tr><td>
     <code>frequency_table()</code> </td>
<td>Requires <b>tokens</b>. The function aggregates useful descriptive measures: absolute frequency, relative frequency, average reduced frequency, and deviation of proportions.</em>) </td>
</tr><tr><td>
     <code>dispersions_all()</code> </td>
<td>Requires <b>dfm</b>. The function calculates a subset of of the most common dispersion measures</td>
</tr><tr><td>
     <code>dispersions_token()</code> </td>
<td>Requires <b>dfm</b> and specified token. The function calculates the dispersion measures for a single token.</td>
</tr>
<tr><td>
     <code>ARF()</code> </td>
<td>Requires <b>tokens</b>. The function calculates average reduced frequency, which combines dispersion and frequency into a single measure.</td>
</tr>
<tr><td><b>Keyness</b>
     </td>
<td><a href=http://htmlpreview.github.io/?https://raw.githubusercontent.com/browndw/quanteda.extras/main/vignettes/keyness_introduction.html target="_blank">vignette</a></td>
</tr><tr><td>
     <code>keyness_table()</code> </td>
<td>Requires target and reference <b>dfms</b>. The function returns the log-likelihood of the target vs. reference corpus, effect sizes by log ratio, <em>p</em>-values, absolute frequencies, relative frequencies, and deviation of proportions.</td>
</tr><tr><td>
     <code>key_keys()</code> </td>
<td>Requires target and reference <b>dfms</b>. The function calculates "key key words" by iterating through each text in the target corpus and calculating keyness values against the reference corpus. Returns a range at which a significance threshold is reached, as well as mean log-likelihood and effect size.</td>
</tr><tr><td>
     <code>keyness_pairs()</code> </td>
<td>Requires 3 or more <b>dfms</b> to compare. The function takes any number of quanteda dfm objects and returns a table of log-likelihood values, effect sizes using Hardie's log ratio and <em>p</em>-values.</td>
</tr><tr><td><b>Collocation</b>
     </td>
<td><a href=http://htmlpreview.github.io/?https://raw.githubusercontent.com/browndw/quanteda.extras/main/vignettes/collocations_introduction.html target="_blank">vignette</a></td>
</tr><tr><td>
     <code>collocates_by_MI()</code> </td>
<td>Requires <b>tokens</b>. A function for calculating point-wise mutual information from quanteda tokens.</td>
</tr>
<tr><td>
     <code>col_network()</code> </td>
<td>Requires <b>collocation tables</b>. The function takes any number of collocations objects (output from the collocates_by_MI function) and generates a tidygraph data object for plotting collocational networks in ggraph.</td>
</tr>
<tr><td><a href=https://github.com/browndw/ngramr.plus target="_blank"><b>ngramr.plus</b></a></td>
<td></td></tr>
<tr><td><b>Time series</b>
     </td>
<td><a href=http://htmlpreview.github.io/?https://raw.githubusercontent.com/browndw/ngramr.plus/main/vignettes/introduction.html target="_blank">vignette</a></td>
</tr>
<tr><td>
     <code>google_ngram()</code> </td>
<td>Requires a <b>vector of word forms</b>. This function extracts frequency data from Google Books' Ngram data and returns a data.frame of frequencies that can be used for analysis and plotting. Note that some of Google's data tables are multiple gigabytes in size, thus the function can take several minutes to run, partcularly for n-grams > 1.</td>
</tr>
<tr><td><a href=https://github.com/browndw/vnc target="_blank"><b>vnc</b></a></td>
<td></td></tr>
<tr><td><b>Variability-Based Neighbor Clustering</b>
     </td>
<td><a href=http://htmlpreview.github.io/?https://raw.githubusercontent.com/browndw/vnc/main/vignettes/introduction.html target="_blank">vignette</a></td>
</tr>
<tr><td>
     <code>vnc_scree()</code> </td>
<td>Requires a <b>vector of (evenly spaced) time values</b> (e.g., years or decades) and a <b>vector of normalized values</b> (e.g., token frequencies per million words). The function produces a scree plot for identifying the number of clusters (or time periods) in a given time sequence.</td>
</tr>
<tr><td>
     <code>vnc_clust()</code> </td>
<td>Requires a <b>vector of (evenly spaced) time values</b> (e.g., years or decades) and a <b>vector of normalized values</b> (e.g., token frequencies per million words). The function produces an <b>hclust</b> object that clusters sequential times series data for ground-up periodization.</td>
</tr>
</tr>
<tr><td><a href=https://github.com/browndw/mda.biber target="_blank"><b>mda.biber</b></a></td>
<td></td></tr>
<tr><td><b>Multi-Dimensional Analysis</b>
     </td>
<td><a href=http://htmlpreview.github.io/?https://raw.githubusercontent.com/browndw/mda.biber/main/vignettes/introduction.html target="_blank">vignette</a></td>
</tr>
<tr><td>
     <code>screeplot_mda()</code> </td>
<td>Requires a <b>data.frame with 1 categorical variable</b> (formatted as a factor) and <b>mutliple continuous variables</b> (e.g., normalized frequencies syntactic features, functional categories, or lexical categories). The function produces a scree plot for identifying the number of factors to extract from the data. The rule of thumb is to have have 5 times as many observations (rows) as variables (columns).</td>
</tr>
<tr><td>
     <code>mda_loadings()</code> </td>
<td>Requires a <b>data.frame with 1 categorical variable</b> (formatted as a factor) and <b>mutliple continuous variables</b> (e.g., normalized frequencies syntactic features, functional categories, or lexical categories). The function returns a data frame containing the dimension score for each document/text. Also included in the data structure are the means-by-group, which is used for plotting, and the factor loadings. The values are stored as attributes.</td>
</tr>
<tr><td>
     <code>stickplot_mda()</code> </td>
<td>Requires an <b>mda object</b> produced by the mda_loadings() fuction. The function outputs a stickplot placing the means of each categorial variable along the specified dimension.</td>
</tr>
<tr><td>
     <code>heatmap_mda()</code> </td>
<td>Requires an <b>mda object</b> produced by the mda_loadings() fuction. The function combines a stickplot with a heatmap of the factor loadings relevant to the specified dimension.</td>
</tr>
<tr><td>
     <code>boxplot_mda()</code> </td>
<td>Requires an <b>mda object</b> produced by the mda_loadings() fuction. The function combines scaled vectors of the relevant factor loadings with sorted boxplots of the dimension scores by category.</td>
</tr>
</tbody></table>