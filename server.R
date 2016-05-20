# Requires googleVis version 0.4.0 and shiny 0.4.0 or higher
# server.R
library(googleVis)
library(shiny)
#inputting data set
motiondata13 <- read.csv("~/R scripts/TA/bubbles/data/figures_20150526.csv")
motiondata13$percentPaid <- as.numeric(as.factor(motiondata13$percentPaid))


shinyServer(function(input, output, session) {

    datasetInput <- reactive({
        gvisMotionChart(motiondata13,
                        idvar="state", 
                        timevar = "year", 
                        xvar = "percentPaid", 
                        yvar = "fundedRatio",
                        sizevar = "liabilities", 
                        colorvar = "fundedRatio")
    })
    
    output$coolplot <- renderGvis ({
        datasetInput()
    })
})







#shinyServer(function(input, output) {
 
#    datasetInput <- reactive({
#        switch(input$motiondata13)
#    })
    
#    output$plot1 <- renderGvis({
        
#        gvisScatterChart(motiondata13, options=list(width=400, height=450))
#    })
#})