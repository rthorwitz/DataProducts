tempConv <- function(temp) (temp-32) * (5/9)
shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$temp})
    output$conversion <- renderPrint({tempConv(input$temp)})
  }
)
