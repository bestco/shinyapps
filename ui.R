library(shiny)
shinyUI(
  pageWithSidebar(
    
    headerPanel("This is a course project"),
    
    sidebarPanel(
      h4('Are you under-weight, optimal, over-weight or obese?'),
      textInput(inputId = "name", label = "Hello, please enter your name: "),
      numericInput(inputId = "height", label = "please enter your height in meters: ", 1.7, min = 0.00, max = 3.00, step = 0.01),
      numericInput(inputId = "weight", label = "please enter your weight in kilogram: ", 60, min = 0, max = 200, step = 1),
      submitButton('Submit')
    ),
    
    mainPanel(
      h4('Introduction'),
      p("This application is to evaluate whether you are under-weight, optimal, over-weight or obese. It is based on a simple calculation of one's Body Mass Index (BMI), which is equal to
                 Weight / Height ^ 2. BMI is often used to evaluate whether one has weight problem. You can get more information on this wikipedia page: http://en.wikipedia.org/wiki/Body_mass_index."),
      h4('How to use this application?'),
      p('Enter your name, height and weight on the left.
         click the "Submit" button. Below will display the result'),
      p('
        '),
      h4('Hello'),
      h4(textOutput('name')),
      h4(textOutput('result'))
      )
    )
  )