library(shiny)
shinyUI(fluidPage(
    titlePanel("Iris Data Analysis"),
    sidebarLayout(
        sidebarPanel(
            selectInput("species", "Select a Specie:",c("Setosa"="setosa", "Versicolor"="versicolor", "Virginica"="virginica")),
            sliderInput("sliderX", "Choose Min und Max Sepal Lenght values",4.3,7.9,value = c(4.3,7.9)),
            sliderInput("sliderY", "Choose Min und Max Petal Lenght values",1,6.9,value = c(1,6.9)),
            checkboxInput("show_xLabel","Show Sepal Axis Label", value = TRUE),
            checkboxInput("show_YLabel","Show Petal Axis Label", value = TRUE),
            checkboxInput("title", "Show Title")
        ),
        mainPanel(
            h3('Sepal Lenght vs Petal Lenght per Specie'),
            plotOutput('plot')
        )
    )
))