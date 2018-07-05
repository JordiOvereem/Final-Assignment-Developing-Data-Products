
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

## Load libraries
library(shiny)
library(ggplot2)
library(plotly)

## Get data from ggplot2 library
dataset <- diamonds
## Shiny output

pageWithSidebar(
  headerPanel("Diamonds Visualization"),
    sidebarPanel(
      HTML("The diamonds dataset is a data frame with 53940 rows and 10 variables:",
           "<br></br>",
           "1) price: price in US dollars ($326--$18,823).",
           "<br>2) carat: weight of the diamond (0.2--5.01).</br>",
           "3) cut: quality of the cut (Fair, Good, Very Good, Premium, Ideal.)",
           "<br>4) color: diamond colour, from J (worst) to D (best).</br>",
           "5) clarity: a measurement of how clear the diamond is (I1 (worst), SI2, SI1, VS2, VS1, VVS2, VVS1, IF (best)).",
           "<br>6) x: diamond length in mm (0--10.74).</br>",
           "7) y: diamond width in mm (0--58.9).",
           "<br>8) z: diamond depth in mm (0--31.8).</br>",
           "9) depth: diamond total depth percentage = z / mean(x, y) = 2 * z / (x + y) (43--79).",
           "<br>10) table: width of top of diamond relative to widest point (43--95).</br>",
           "<br>With this RShiny application you are able to make different plots with the diamonds data.",
           "Just choose the sample size and your variables for the X-axis, Y-Axis and color. Also, you may add smooting lines if you wish.</br>",
           "<br></br>"
           ),
    sliderInput('sampleSize', 'Sample Size', min=1, max=nrow(dataset),
                value=min(1000, nrow(dataset)), step=500, round=0),
    selectInput('x', 'X-axis', names(dataset)),
    selectInput('y', 'Y-axis', names(dataset), names(dataset)[[2]]),
    selectInput('color', 'Color', c('None', names(dataset))),
    checkboxInput('smooth', 'Smooth')
  ),
  mainPanel(
    plotOutput('plot')
  )
)