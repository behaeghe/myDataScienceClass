# Gadget Test
JRB  
December 6, 2016  



## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.
When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:


```r
library(shiny)
library(miniUI)

pickXY <- function(data_frame) {
    ui <- miniPage(gadgetTitleBar("Select Points by Dragging your Mouse"), miniContentPanel(plotOutput("plot", 
        height = "100%", brush = "brush")))
    
    server <- function(input, output, session) {
        output$plot <- renderPlot({
            plot(data_frame$X, data_frame$Y, main = "Plot of Y versus X", xlab = "X", 
                ylab = "Y")
        })
        observeEvent(input$done, {
            stopApp(brushedPoints(data_frame, input$brush, xvar = "X", yvar = "Y"))
        })
    }
    
    runGadget(ui, server)
}

my_data <- data.frame(X = rnorm(100), Y = rnorm(100))

pickXY(my_data)
## 
## Listening on http://127.0.0.1:3524
##               X           Y
## 1   0.226001438 -0.59023410
## 2  -0.103952140  0.35511105
## 4   1.014926694 -0.29026510
## 5   0.121807806 -1.00275423
## 7   0.380661217 -0.15942244
## 8   0.473143727  0.11544738
## 9   1.071853214 -0.11267647
## 10 -0.066135060  0.27415836
## 11  0.285927720  0.98493621
## 12 -0.047917123 -1.53253013
## 17  0.123852525 -0.49069784
## 19 -0.048234690 -0.64913164
## 22 -0.381531446 -0.74984223
## 23  0.493054407  0.84363847
## 24  0.967744622 -1.09689932
## 25 -0.452264284 -0.11700236
## 27 -0.038958654 -0.45469784
## 28 -0.160129164  1.23058376
## 29  0.770790031 -0.05574484
## 32 -0.454368153 -0.27728665
## 34  0.673529450 -1.19826404
## 36  0.979593078 -0.69906229
## 39  0.333998185 -1.18607064
## 40  0.013504514  0.74157548
## 41  0.603569897  1.17583852
## 45  0.465032558  1.36470393
## 46 -0.273026095  0.76409450
## 47  0.692184093  0.96094324
## 56  0.483176915 -2.01941890
## 57  1.082938544 -0.13843673
## 59 -0.043680986 -1.17423071
## 61 -0.257566866 -0.37708869
## 62  0.147703386 -1.18070190
## 64  0.480465339  0.03992882
## 65  0.448652941  0.06691822
## 67  0.167686417  0.29623961
## 68  0.418223241  0.69222564
## 72  0.606656368 -0.40640621
## 73  1.078890603 -0.04345766
## 74 -0.455643175  0.46610502
## 75 -0.156203046  0.71917776
## 76  0.010001556 -1.24342209
## 77  0.659045888  0.12999934
## 78  0.788336581  0.57748238
## 79  1.166255725  0.35819993
## 83 -0.195802805 -1.20608302
## 84  0.193034876 -0.74964950
## 85  0.500414355 -1.46226624
## 86  0.003661352  0.71388198
## 87 -0.521026285  0.27929662
## 88  0.085907730 -1.61298441
## 92 -0.410594831 -1.42492804
## 95  0.344765806 -1.94151227
## 99 -0.467402877 -0.31799511
```

## Including Plots

You can also embed plots, for example:

![](GadgetTest_files/figure-html/pressure-1.png)<!-- -->

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
