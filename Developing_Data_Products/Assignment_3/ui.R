# Load shiny package.
library(shiny)

# Define UI for application to calculate daily MED.
shinyUI(fluidPage(
  
  # Add in title of application.
  titlePanel("Calculating Opioid Daily Morphine Equivalent Dosage (MED)"),
  
  # Construct sidebar.
  sidebarLayout(sidebarPanel(
      
      # Add in introductory text.
      helpText("Opioid overdose can be mitigated by doctors carefully calculating their patients' total morphine equivalent dosage (MED).
                The government-recommended threshold is 90 milligrams MED. You can use the following calculator for each opioid drug to determine wheter
                your patient is receiving a daily dosage above the recommended threshold, thereby putting them at risk for overdose. We use 
                converesion factors recommended by the CDC. Enter in the total daily mg for each drug your patient is taking below."),
  
      # Add numeric inputs for all types of opioid drugs.
      numericInput(
        inputId = "codeine",
        label = strong("Codeine:"),
        value = 0
      ),
      numericInput(
        inputId = "fentanyl",
        label = strong("Fentanyl:"),
        value = 0
      ),
      numericInput(
        inputId = "hyrdocodone",
        label = strong("Hydrocodone:"),
        value = 0
      ),
      numericInput(
        inputId = "hydromorphone",
        label = strong("Hydromorphone:"),
        value = 0
      ),
      numericInput(
        inputId = "morphine",
        label = strong("Morphine:"),
        value = 0
      ),
      numericInput(
        inputId = "oxycodone",
        label = strong("Oxycodone:"),
        value = 0
      ),
      numericInput(
        inputId = "oxymorphone",
        label = strong("Oxymorphone:"),
        value = 0
      )
    ),
    
    # Show main panel.
    mainPanel(
       uiOutput("result"),
       uiOutput("table")
    )
  )
))
