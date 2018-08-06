# Calculate daily MED.
med <- function(codeine, fentanyl, hydrocodone, hydromorphone, 
                morphine, oxycodone, oxymorphone) {
  
  med = sum((codeine * 0.15), (fentanyl * 2.4), (hydrocodone * 1),
            (hydromorphone * 4), (morphine * 1), (oxycodone * 1.5), 
            (oxymorphone * 3))
  
  return(med)
  
}

library(shiny)

# Define server logic.
shinyServer(function(input, output) {
  
  output$result <- renderText({
    MED = med(codeine = input$codeine, fentanyl = input$fentanyl, hydrocodone = input$hyrdocodone,
              hydromorphone = input$hydromorphone, morphine = input$morphine, oxycodone = input$oxycodone,
              oxymorphone = input$oxymorphone)
    
    if      (MED <= 90) info = "<span style='color: green'>Under threshold</span>"
    else if (MED > 90)  info = "<span style='color: red'>Over threshold</span>"
    
    paste0("The daily MED for your patient is ", "<code>", round(MED, 2), "</code>", ", which is: ", info)
  
  })
  
})
