#ui.R

#shinyUI(fluidPage(
#    titlePanel("title panel"),
#    sidebarLayout(
#        sidebarPanel(
#            selectInput("data")
#        ),
#        mainPanel(
#            plotOutput("plot1"))
#    )
#))

library(googleVis)
library(shiny)

shinyUI(fluidPage(
          titlePanel("Google motion chart"),
          sidebarLayout(
              sidebarPanel("our inputs will go here"),
              mainPanel(
                  htmlOutput("coolplot")
              )
          )
))
