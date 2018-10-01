

library(shiny)

shinyUI(
  fluidPage(
               titlePanel("The relationship between variables and miles per gallon(MPG)"),
               sidebarLayout(
                 sidebarPanel(
                   selectInput("variable","variable:",
                               c("Number of cylinders"="cyl",
                                 "Displacement(cu.in)"="disp",
                                 "Grosshorsepower"="hp",
                                 "Rear axle ratio"="drat",
                                 "Weight(lb/1000)"="wt",
                                 "1/4 mile time"="qsec",
                                 "V/S"="vs",
                                 "Transmission"="am",
                                 "Number of forward gears"="gear",
                                 "Number of carburators"="carb"
                                 )),
                   checkboxInput("outliers","ShowBoxPlot's outliers",FALSE)
                 ),
                 mainPanel(
                   h3(textOutput("caption")),
                   tabsetPanel(type="tabs",
                               tabPanel("BoxPlot",plotOutput("mpgBoxPlot")),
                               tabPanel("Regression model",
                                        plotOutput("mpgPlot"),
                                        verbatimTextOutput("fit")
                                        ))
                 )
               ),
               tabPanel("check the Source Code",
                        h2("All the SourceCode can be found in coursera"),
                        hr(),
                        h3("Peer Assessment/Regression Model Course Project"),
                        helpText("You work for Motor Trend, a magazine about the 
                                 automobile industry looking out a dataset of a 
                                 collaboration between a set of variables and 
                                 miles per gallon(MPG)(outcome).They are particularly
                                 interested in the following two questions:"),
                        h3("Important"),
                        p("A dataframe with 32 observations on 11 variables"),
                        a("https://class.coursera.org/regmodels-008")
               ),
                        tabPanel("More Data Detail",
                                 h2("Motor Trend Car Road Tests"),
                                 hr(),
                                 h3("Description"),
                                 helpText("The data was exctracted from the 1974 
                                          Motor Trend US Magazine,","and comprises
                                          fuel consumption and aspects of automobile
                                          design and performance","for 32 automobiles (1973-74 models)"),
                                 h3("format"),
                                 p("A data frame with 32 observations on 11 variables"),
                                 p("[,1] mpg Miles / (US) gallon"),
                                 p("[,2] cyl Number of cylinders"),
                                 p("[,3] disp Displacement (cu.in)"),
                                 p("[,4] hp Gross horsepower"),
                                 p("[,5] drat Rear axle ratio"),
                                 p("[,6] wt Weight(lb/1000)"),
                                 p("[,7] qsec 1/4 miltime"),
                                 p("[,8] vs V / S"),
                                 p("[,9] am Transmission (0=automatic, 1=manual)"),
                                 p("[,10] gear Number of forward gears"),
                                 p("[,11] carb Number of Carburators"),
                                 h3("Source"),
                                 p("Henderson and Vellman (1981), Building multiple regression
                                   models interactively Biometrics",391-411),
                                 tabPanel("Go back to my Github repository",
                                          a("https://github.com/rajasekaran tab=repository"),
                                          hr(),
                                          h2("I believe you are happy with the Shiny App"),
                                          h2("The name of the repository is DataProducts")
                                          )
                        )
  )
                        )
  
                                
               
  
  
   
