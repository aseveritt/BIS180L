Assignment 1
============

## Part 1

In *Introduction to Markdown* you were asked to create a brief
biography of your lab partner. Paste that below.
#Bowen Novack
**Bioinformatics**
*Senior*

* Basketball
* Beer


## Part 2

In *Just Enough Unix for Bioinformatics: Unix Exercise* you were asked
to create a directory structure that mimics the NCBI taxonomy structure
for a bunch of model organisms. Describe in detail (using a Markdown
list) the steps you used to do that task.
##### Step 1
* echo "Bacteria; Proteobacteria; Gammaproteobacteria; Enterobacteriales; Enterobacteriaceae; Escherichia" | tr ';' '/' | tr -d [:space:]
#####Step 2
* mkdir -p #output of echo#


## Part 3

In *Just Enough Unix for Bioinformatics: Genome Composition Experiment*
you were asked to analyze the mono- and di-nucleotide compositions of 3
genomes. Input the data into the tables below (or an equally clear
format).
####Commands:
1. copy all genomes over
>cp file ~/filelocation
>cat *.fas.gz > ~/filelocation/filename

2. remove all headers
>zless #oldfile#  |grep -v '>' > #newfile#

3. count all mono/di-nt
>grep '#onechar#' -o #filename# |wc -l
>grep 'ACTG' -o #filename# |wc -l
>echo (above results)/(total count) |bc -l
>_I chose to do exact frequencies, not estimates because I the time constraint would be relatively the same-- so why not be more exact._

**Table 1:** Mono-nucleotide frequencies

| NT |  At  |  Ce  |  Dm  |
|:--:|:-----|:-----|:-----|
| A  |   0.32   |   0.323   |   0.29   |
| C  |   0.18   |   0.117   |   0.208   |
| G  |   0.18   |   0.117   |   0.208   |
| T  |   0.32   |   0.323   |   0.29   |

**Table 2:** Expected and observed di-nucleotide frequences

| NTs| At obs | At exp | Ce obs | Ce exp | Dm obs | De exp |
|:--:|:-------|:-------|:-------|:-------|:-------|:-------|
| AC |     0. 0516  |    0.0576    |   0.0474    |   0.0572   |     0.0517      |   0.0603     |
| AG |   0.0587     |     0.0576   | 0.0496     |   0.0572      |    0.0533    |     0.0603    |
| AT |  0.0912      |    0.102    |   0.0867    |    0.104    |    0.805    |    0.0814    | 
| CA |    0.0627    |    0.0576    |    0.0606   |     0.0572    |   0.0661     |   0.0603      |
| CC |    0.0289    |     0.0324   |    0.0282   |    0.0313     |  0.0374    |    0.0433    |
| CG |   0.0232     |     0.0324   |     0.0306     |    0.0313     |    0.0401      |    0.0433     |
| CT |   0.0587     |    0.0576    |   0.0496    |     0.0572    |    0.0532    |    0.0603     |
| GA |    0.0633    |    0.0576    |   0.0609     |     0.0572    |   0.0549     |   0.0603      |
| GC |    0.0296    |    0.0324    |     0.0327   |      0.0313     |    0.0515    |   0.0433      |
| GG |    0.0287    |    0.0324    |    0.0280       |      0.0313     |    0.03704    |    0.0433     |
| GT |    0.0516    |    0.0576    |   0.0473     |    0.0572     |    0.0515    |   0.0603      |
| TA |    0.0756    |    0.1024    |    0.0622    |    0.104    |    0.0645    |   0.0814     |
| TC |    0.0632    |   0.0576     |   0.0601    |      0.0572   |    0.0548    |    0.0603     |
| TG |   0.0626     |    0.0576    |    0.0607    |    0.0572     |   0.0658     |   0.0603      |
| TT |   0.083     |    0.1024    |    0.0917    |    0.104    |    0.0725    |   0.0814     |

Briefly discuss the results of your experiment below.
>_I predicted that the di-nt composition frequences cannot be infered from the mono -nt composition because amino acids are not independently distributed from each other(ex. Alu, repeats, codon bias etc)_

>_This experiment confirmed that you cannot infer mono nt frequencies from di nt frequencies as shown by the differences in frequency values consistently across all three genomes._

>_Given these results, I would look into areas where the mono-nt and di-nt freq are significantly/suprisingly different. This could be indication of codon bias or repeat elements. For example, I would start with the unusually low amount of the AT di-nt in A. thalania. There is an expected freq of 0.1024 but observed only 0.0756. Also, it appears that C.elegans is bias towards GC content because the observed frequencies for AT/TA/TT/AA are all lower than expected. _
_


