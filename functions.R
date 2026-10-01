printTable <- function(x) {
  cat(knitr::knit_print(x))
}
printFigure <- local({
  plotNumber <- 0L

  function(x, width = 6, height = 4, outWidth = width) {
    plotNumber <<- plotNumber + 1L

    figure_dir <- knitr::opts_current$get("fig.path")
    if (is.null(figure_dir) || !nzchar(figure_dir)) {
      figure_dir <- "report_files/figure-docx/"
    }
    dir.create(figure_dir, recursive = TRUE, showWarnings = FALSE)

    path <- file.path(
      figure_dir,
      sprintf("asis-plot-%03d.png", plotNumber)
    )

    ggplot2::ggsave(
      filename = path,
      plot = x,
      width = width,
      height = height,
      units = "in",
      dpi = 350,
      bg = "white"
    )

    markdown_path <- gsub("\\\\", "/", path)
    cat(
      "\n\n",
      sprintf("![](%s){width=%sin}\n\n", markdown_path, outWidth),
      sep = ""
    )

    invisible(path)
  }
})
captionTable <- function(title) {
  text <- paste(
    ':::{custom-style="TableCaption"}',
    title,
    ':::\n\n',
    sep = "\n\n"
  )
  cat(text)
}
captionFigure <- function(title) {
  text <- paste(
    ':::{custom-style="FigureCaption"}',
    title,
    ':::\n\n',
    sep = "\n\n"
  )
  cat(text)
}
footer <- function(footer) {
  text <- paste(
    ':::{custom-style="CaptionFooter"}',
    footer,
    ':::\n\n',
    sep = "\n\n"
  )
  cat(text)
}
