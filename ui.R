
shinyUI(
  navbarPage(
    theme = shinytheme("flatly"),
    'Iris Chen',
             tabPanel("Health Factors by Year",
                      fluidPage(
                        sidebarLayout(
                          sidebarPanel(
                            fluidRow(
                              column(4, selectizeInput(inputId="Year",
                                                       label="Choose an year",
                                                       choices= year_lis))
                            ),

                            fluidRow(
                              column(4, selectizeInput(inputId="measure1",
                                                       label="Choose a measurement",
                                                       choices= measure_lis))
                            ),
                            fluidRow(
                              column(4, selectizeInput(inputId="measure2",
                                                       label="Choose a measurement",
                                                       choices= measure_lis))
                            )
                          ),
                          mainPanel(
                            fluidRow(
                              column(6, htmlOutput("map1")),
                              column(6, htmlOutput("map2"))
                            ),
                            fluidRow(
                              htmlOutput("corr_1"))
                            )
                          )
                        ) 
                      ),
             tabPanel("Health Factors",
                      fluidPage(
                            fluidRow(
                              column(6,
                                h5("Click a correlation on the heatmap to view scatter plot."),
                                plotlyOutput("heat")),
                              column(6,
                              plotlyOutput("corrs"))
                      )
                            
                          
                                   )
                 ),
            tabPanel(
              "Bubble Chart",
              fluidPage(
                fluidRow(
                  column(12,
                    plotlyOutput('bubble')
                  )
                )
              ),
              fluidRow(column(4, selectizeInput(inputId="Year2",
                                         label="Choose an year",
                                         choices= year_lis))
              )
            )
               )
)


