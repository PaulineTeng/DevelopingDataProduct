library(shiny)

hypertension <- function(systolic, diastolic) {
  if ((systolic < 120) && (diastolic < 80)) {result <- 'Normal'}
  else {
    if ((systolic >= 120 && systolic < 140) || (diastolic >= 80 && diastolic < 90)) {result <- 'Prehypertension'}
    else {result <- 'Hypertension'}
  }
  result
}

shinyServer(
  function(input, output) {
    output$systolic <- renderPrint({input$systolic})
    output$diastolic <- renderPrint({input$diastolic})
    output$prediction <- renderPrint({hypertension(input$systolic, input$diastolic)})
  }
)






