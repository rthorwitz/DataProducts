shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Temperature Conversion"),
    
    sidebarPanel(
      h5('Enter the temperature in Fahrenheit (accepts intergers and decimals, but not fractions) and then click the Submit button. You will then see the temperature in Celsius on the side panel.'),
      numericInput('temp', 'degrees (F)', 40, min = 0, max = 110, step = 1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of conversion'),
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in Celsius temperature of '),
      verbatimTextOutput("conversion")
    )
  )
)
