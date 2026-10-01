# Quarto Training

## Requirements

Install [R](https://cran.r-project.org/), [RStudio](https://posit.co/download/rstudio-desktop/), and [Quarto](https://quarto.org/docs/get-started/) before the session.

## Clone the repository

### GitHub Desktop

1. Open GitHub Desktop and select **File > Clone repository**.
2. Select the **URL** tab.
3. Enter `https://github.com/oxford-pharmacoepi/QuartoTraining.git`.
4. Choose where to save the repository and select **Clone**.

### Command line

```bash
git clone https://github.com/oxford-pharmacoepi/QuartoTraining.git
cd QuartoTraining
```

## Start the training

1. Open `QuartoTraining.Rproj` in RStudio.
2. Make a copy of `report.qmd` and give it a new name, such as `report-my-name.qmd`. Work from this copy so that you do not lose the original file.
3. Open your copied `.qmd` file.
4. Run the package installation chunk near the top of the document.
5. Render the document once before starting the exercises to confirm that everything works.

The rendered Word document will be created in the project folder.
