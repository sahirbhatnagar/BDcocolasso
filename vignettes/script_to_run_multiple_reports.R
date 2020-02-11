render_report = function(NLessThanP) {
  rmarkdown::render(
    "vignettes/Introduction-to-BDcocolasso.Rmd", 
    params = list(
      NLessThanP = NLessThanP
    ),
    output_file = paste0(ifelse(NLessThanP,"Report-N Less than P","Report-N Bigger than P"), ".html")
  )
}

render_report(FALSE)
render_report(TRUE)
