#
# course: "Developing Data Products - Week 4 Assignment"
# author: "PGM"
# date: "19/11/2017"
#

library(shiny)

monthlyPayment <- function(mortgage, interest, duration) 
  mortgage * interest / 1200 * (1 + interest / 1200)^(duration * 12) / ((1 + interest / 1200)^(duration * 12) - 1)

# Define server logic required to calculate the monthly payments for the chosen mortgage conditions
shinyServer(
  function(input, output) {
  
    output$mortgage <- renderPrint({input$mortgage})
    output$interest <- renderPrint({input$interest})
    output$duration <- renderPrint({input$duration})
    
    output$payment <- renderPrint({monthlyPayment(input$mortgage, input$interest, input$duration)})
})
