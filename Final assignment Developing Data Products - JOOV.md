Presentation Final Assignment Developing Data Products
========================================================
author: Jordi Overeem
date: 5 juli 2018
width: 1440
height: 900

Context
========================================================
transition: rotate
The final project's requirements are:
- Create a Shiny application,
- Use Slidfy or RStudio Presenter to build a presentation.

The basic requirements are outlined in the final project description for the class. This project utilizes the diamonds dataset from the ggplot2 package. The Shiny user interface allows to input smaple size, variables for the X-axis, Y-axis variables and Color, from the available diamonds data. The Shiny application will produce the corresponding plot. The links to the GitHub repo, RStudio Presentation, and a Shiny application are located at the last slide of this presentation.

Data
========================================================
transition: rotate
There is a diamonds dataset available in R package ggplot2. The dataset contains the prices and other attributes of almost 54,000 diamonds. Below, a summary table is provided:

```r
library(ggplot2)
df<-diamonds
summary(df)
```

```
     carat               cut        color        clarity     
 Min.   :0.2000   Fair     : 1610   D: 6775   SI1    :13065  
 1st Qu.:0.4000   Good     : 4906   E: 9797   VS2    :12258  
 Median :0.7000   Very Good:12082   F: 9542   SI2    : 9194  
 Mean   :0.7979   Premium  :13791   G:11292   VS1    : 8171  
 3rd Qu.:1.0400   Ideal    :21551   H: 8304   VVS2   : 5066  
 Max.   :5.0100                     I: 5422   VVS1   : 3655  
                                    J: 2808   (Other): 2531  
     depth           table           price             x         
 Min.   :43.00   Min.   :43.00   Min.   :  326   Min.   : 0.000  
 1st Qu.:61.00   1st Qu.:56.00   1st Qu.:  950   1st Qu.: 4.710  
 Median :61.80   Median :57.00   Median : 2401   Median : 5.700  
 Mean   :61.75   Mean   :57.46   Mean   : 3933   Mean   : 5.731  
 3rd Qu.:62.50   3rd Qu.:59.00   3rd Qu.: 5324   3rd Qu.: 6.540  
 Max.   :79.00   Max.   :95.00   Max.   :18823   Max.   :10.740  
                                                                 
       y                z         
 Min.   : 0.000   Min.   : 0.000  
 1st Qu.: 4.720   1st Qu.: 2.910  
 Median : 5.710   Median : 3.530  
 Mean   : 5.735   Mean   : 3.539  
 3rd Qu.: 6.540   3rd Qu.: 4.040  
 Max.   :58.900   Max.   :31.800  
                                  
```

Example plot
========================================================
transition: rotate
Below, the example plot shows on the X-axis the diamond carats and on the Y-axis the diamonds prices.
With the Shiny application you are able to make many other plots and investigate the dataset.

```r
library(ggplot2)
df<-diamonds
ggplot(df, aes(x=carat, y=price)) + geom_point(size = 5, alpha = 0.2)
```

![plot of chunk unnamed-chunk-2](Final assignment Developing Data Products - JOOV-figure/unnamed-chunk-2-1.png)

Links
========================================================
transition: rotate
To run the Shiny application, click on the link to the Shiny application below. The Shiny application should open in the browser including an explanation on how to use it.

- GitHub repo with ui.R and server.R files: [GitHub repo](https://github.com/JordiOvereem/Final-Assignment-Developing-Data-Products/tree/gh-pages)
- Shiny Application: [Shiny App](https://testomgevingvanjordi.shinyapps.io/developing_data_products_final_assignment_-_joov/)
- This Presentation on RPubs: [Presentation](http://rpubs.com/JOOV/Presentation-final)
