library(shiny)
popdat<-read.csv("popdata.csv")
doubling<-function(rate) 70/rate
fsize<-function(size) size*2

shinyServer(
       function(input, output){
               output$inputValue1<-renderPrint({input$geo})
               output$prediction1<-renderPrint({popdat$apgr[popdat$geo==input$geo]})
               output$prediction2<-renderPrint({doubling(popdat$apgr[popdat$geo==input$geo])})
               output$prediction3<-renderPrint({fsize(popdat$pop13[popdat$geo==input$geo])})
               output$inputValue2<-renderPrint({input$rate})
               output$prediction4<-renderPrint({doubling(input$rate)})
       }
)
