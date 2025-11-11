# install_packages.R
# Script to install all required R packages for the SkinSpectrum project

# Set CRAN mirror
options(repos = c(CRAN = "https://cloud.r-project.org"))

# List of required packages
required_packages <- c(
  "knitr",
  "patchwork",
  "tidyverse",
  "scales",
  "dplyr",
  "openxlsx",
  "ComplexUpset",
  "ggdist",
  "KernSmooth",
  "fda",
  "here"
)

# Function to install packages if not already installed
install_if_missing <- function(packages) {
  new_packages <- packages[!(packages %in% installed.packages()[,"Package"])]
  if(length(new_packages) > 0) {
    cat("Installing missing packages:", paste(new_packages, collapse = ", "), "\n")
    install.packages(new_packages, dependencies = TRUE)
  } else {
    cat("All required packages are already installed.\n")
  }
}

# Install missing packages
install_if_missing(required_packages)

# Verify installation
cat("\nVerifying package installation...\n")
all_installed <- TRUE
for(pkg in required_packages) {
  if(require(pkg, character.only = TRUE, quietly = TRUE)) {
    cat("✓", pkg, "is installed and loadable\n")
  } else {
    cat("✗", pkg, "failed to install or load\n")
    all_installed <- FALSE
  }
}

if(all_installed) {
  cat("\n✓ All packages successfully installed!\n")
} else {
  cat("\n✗ Some packages failed to install. Please check the error messages above.\n")
}
