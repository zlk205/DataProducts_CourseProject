library(shiny)

shinyUI(pageWithSidebar(
        headerPanel("The Rule of 70"),
        sidebarPanel(
                h4('A basic principle of exponential growth is that
                   any quantity subjected to a constant rate of growth
                   {x} will double in size in {70/x} years'),
                h4('Find out the doubling time for the geographies below:'),
                selectInput('geo',label=h5("Select Geography"),
                            choices=list("World Population","United States",
                                         "New York City","Los Angeles",
                                         "Chicago","Houston","Philadelphia")),
                
                h5('------------------------------'),
                h4('Or if you prefer, select your own growth rate to find out
                   the corresponding doubling time'),
                numericInput('rate',label=h5("Provide an annual rate of growth"),
                             0.0,min=0.0,max=100.0,step=0.1),
                h5('Note: All population esimates taken from the US Census.
                   Current year estimates are for 2013 (the most recent complete year).
                   Annual growth rates are calculated from the estimated change between
                   2012 and 2013.')
        ),
        mainPanel(
                h4('The current selection'),
                verbatimTextOutput("inputValue1"),
                h4('Which has an annual rate of growth of'),
                verbatimTextOutput("prediction1"),
                h4('The number of years for this population to double in size?'),
                verbatimTextOutput("prediction2"),
                h4('The estimated population at the time of doubling?'),
                verbatimTextOutput("prediction3"),
                h5('------------------------------'),
                h4('Your specified annual growth rate'),
                verbatimTextOutput("inputValue2"),
                h4('The doubling time for your specified rate?'),
                verbatimTextOutput("prediction4")
        )
))
