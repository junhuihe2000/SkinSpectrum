# SkinSpectrum

A [workflowr][] project.

[workflowr]: https://github.com/workflowr/workflowr

## Installation

### R Package Requirements

To install all required R packages for this project, run the following command in R:

```r
source("code/install_packages.R")
```

This will automatically install the following packages if they are not already present:
- knitr
- patchwork
- tidyverse
- scales
- dplyr
- openxlsx
- ComplexUpset
- ggdist
- KernSmooth
- here

Alternatively, you can install packages manually:

```r
install.packages(c("knitr", "patchwork", "tidyverse", "scales", "dplyr", 
                   "openxlsx", "ComplexUpset", "ggdist", "KernSmooth", "here"))
```
