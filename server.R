library(shiny)

result <- function(weight, height) {
  bmi <- weight / height ^ 2
  if (bmi < 18.5) h <- "You are under-weight"
  else if (bmi <= 25) h <- " You have an optimal weight"
  else if (bmi <= 30) h <- "You are over-weight"
  else h <- "You are obese"
  h
}

shinyServer(
  function(input, output){
    output$name <- renderText({input$name})
    output$result <- renderText({result(input$weight, input$height)})
  }
)