#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- shinyUI(pageWithSidebar(  
        headerPanel("Example plot"),  
        sidebarPanel(    
                sliderInput('mu', 'Guess at the mu',value = 70, min = 60, max = 80, step = 0.05) 
                ), 
        mainPanel(    
                plotOutput('myHist')  
        )
))

# Define server logic required to draw a histogram
library(UsingR)
data(galton)

server <- shinyServer(  
        function(input, output) {    
                output$myHist <- renderPlot({      
                        hist(galton$child, xlab='child height', col='lightblue',main='Histogram')      
                        mu <- input$mu      
                        lines(c(mu, mu), c(0, 200),col="red",lwd=5)      
                        mse <- mean((galton$child - mu)^2)      
                        text(63, 150, paste("mu = ", mu))      
                        text(63, 140, paste("MSE = ", round(mse, 2)))      
                })      }
)

# Run the application 
shinyApp(ui = ui, server = server)

