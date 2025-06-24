# Render rmd

# Clean environment
rm(list = ls())
gc()

# Knit to html
rmarkdown::render("/Data/R_scripts/01_Setup.Rmd")

# Knit to html
rmarkdown::render("/Data/R_scripts/02_MIB_Bl.Rmd")

# Knit to html
rmarkdown::render("/Data/R_scripts/03_MIB_TMT.Rmd")

# Knit to html
rmarkdown::render("/Data/R_scripts/04_RNAseq.Rmd")

# Knit to html
rmarkdown::render("/Data/R_scripts/05_MIBs_BL_sig.Rmd")

# Knit to html
rmarkdown::render("/Data/R_scripts/06_MIBs_DYN_sig.Rmd")

# Knit to html
rmarkdown::render("/Data/R_scripts/07_mRNA_dynTKI.Rmd")

# Clean environment
rm(list = ls())
gc()

# Knit to html
rmarkdown::render("/Data/R_scripts/2025_Lin_Figures.Rmd")

