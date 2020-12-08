library(shiny)
data("iris")
shinyServer(function(input, output) {
    output$plot <- renderPlot({
      minX <- input$sliderX[1]
      maxX <- input$sliderX[2]
      minY <- input$sliderY[1]
      maxY <- input$sliderY[2]
      dataX <- iris[iris$Species == input$species, 1]
      dataY <- iris[iris$Species == input$species, 3]
      xLabel <- ifelse(input$show_xLabel, "Sepal Length", "")
      YLabel <- ifelse(input$show_YLabel, "Petal Length", "")
      title_main <- ifelse(input$title,input$species, "")
      plot(dataX, dataY, xlab = xLabel, ylab = YLabel, main = title_main, xlim = c(minX, maxX), ylim = c(minY, maxY))
    })
})