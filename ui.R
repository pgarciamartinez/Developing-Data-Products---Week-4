#
# course: "Developing Data Products - Week 4 Assignment"
# author: "PGM"
# date: "19/11/2017"
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Mortgage Payment Calculator"),
  
  # Sidebar with the inputs (mortgage amount, annual interest & duration) to the mortgage calculator 
  sidebarLayout(
    sidebarPanel(
       numericInput('mortgage', 'Mortgage (in any currency)', 100000, min = 10000, max = 2500000, step = 5000),
       numericInput('interest', 'Annual interest (in %)', 2, min = 0.01, max = 10, step = 0.01),
       numericInput('duration', 'Duration (in years)', 25, min = 1, max = 30, step = 1),
       submitButton()
    ),

    # Main panel with the confirmations of the inputs and also the resulting output (monthly payments)     
    mainPanel(
       h4('You chose a mortgage of:'),
       verbatimTextOutput("mortgage"),
       h4('An annual interest of:'),
       verbatimTextOutput("interest"),
       h4('And finally a duration in years of:'),
       verbatimTextOutput("duration"),
       
       h3('Mortgage Payment'),
       h4('These conditions result in a monthly payment of'),
       verbatimTextOutput("payment")
    )
  )
))
