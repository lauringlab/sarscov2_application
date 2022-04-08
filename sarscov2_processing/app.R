#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI 
ui <- fluidPage(

    # Application title
    titlePanel("Processing SARS-COV-2 Sequencing Data"),

    sidebarLayout(
        sidebarPanel(
            h6("Option to Download Compiled Data")
        ),

        # main panel contents = loading initial files
        # action buttons for various other processing
        mainPanel(
            fileInput("base_file", h4("Base File Input:")), 
            fileInput("fasta_file", h4("FASTA File Input:")),
            actionButton("pangolin_action", "Pangolin"), 
            actionButton("nextclade_action", "Nextclade"), 
            actionButton("nextclade_action", "GISAID")
        )
    )
)

# Define server logic 
server <- function(input, output) {
    
    base_data_processing <- reactive({
        base_meta <- input$base_file
        
    })
    
    fasta_file_processing <- reactive({
        base_fasta <- input$fasta_file
        
        
    }) 
    
}

# Run the application 
shinyApp(ui = ui, server = server)
