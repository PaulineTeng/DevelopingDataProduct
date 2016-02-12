library(shiny)

shinyUI(
  pageWithSidebar(
    #Application title
    headerPanel('Hypertension Prediction'),
    
    sidebarPanel(
      numericInput('systolic', 'Systolic mm Hg (upper #)', 100, min = 50, max = 250, step = 1),
      numericInput('diastolic', 'Diastolic mm Hg (lower #)', 80, min = 30, max = 200, step = 1),
      submitButton('Submit')
    ),
    
    mainPanel(
      h3('Results of prediction'),
      h4('You entered'),
      verbatimTextOutput('systolic'),
      verbatimTextOutput('diastolic'),
      h4('Which resulted in a prediction of '),
      verbatimTextOutput('prediction')
    )
  )
)