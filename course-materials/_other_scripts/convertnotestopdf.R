library(xaringanBuilder)

setwd("C:/Users/tgeorge/Desktop/website/course-materials/_slides")

slide_name = "u2-d04-viz-cat/u2-d04-viz-cat"

# This sometimes needs run twice
#build_pdf(paste0(slide_name,'.rmd'), complex_slides = TRUE, partial_slides = TRUE)
build_pdf(paste0(slide_name,'.html'), complex_slides = TRUE, partial_slides = TRUE)

# OR dektape
system("`npm bin`/decktape remark slides.html slides.pdf") #
xaringan::decktape()