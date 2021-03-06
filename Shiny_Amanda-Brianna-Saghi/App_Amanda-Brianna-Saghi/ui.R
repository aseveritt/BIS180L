#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)


shinyUI(fluidPage( #create the overall page
  
  # Application title
  titlePanel("Rice Data"),
  
  # Some helpful information
  helpText("This application creates density plots that show the difference between
           Rice phenotypes and their seed volumn, protein content, amylose content, plant height, and
           flag leaf length across different geographical regions.  Please use the radio box below to choose a trait,
           for plotting."),
  
  # Sidebar with a radio box to input which trait will be plotted
  sidebarLayout(
    sidebarPanel(
      radioButtons("trait", #the input variable that the value will go into
                   "Choose a trait to display:",
                   c("Seed.volume",
                     "Protein.content",
                     "Amylose.content",
                     "Plant.height",
                     "Flag.leaf.length")
      )),
    
    # Show a plot of the generated distribution
    mainPanel(plotOutput("boxPlot")
    )
  )
))


