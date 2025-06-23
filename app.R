# Instalar paquetes si no los tenés
# install.packages(c("shiny", "leaflet", "DT", "ggplot2", "dplyr"))

#indica la ruta donde estamos trabajando
setwd("C:/Users/MARCOS/Desktop/2do Año/Ciencia de Datos/Dashboard")


library(shiny)
library(leaflet)
library(DT)
library(ggplot2)
library(dplyr)

# Cargar los datos
datos <- read.csv("centros-medicos-barriales.csv", stringsAsFactors = FALSE)

# UI
ui <- fluidPage(
  titlePanel("Centros Médicos Barriales"),
  sidebarLayout(
    sidebarPanel(
      selectInput("barrio", "Seleccionar barrio:",
                  choices = unique(datos$barrio),
                  selected = unique(datos$barrio)[1],
                  multiple = TRUE)
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Tabla", DTOutput("tabla")),
        tabPanel("Mapa", leafletOutput("mapa", height = 500)),
        tabPanel("Estadísticas por Barrio", plotOutput("grafico_barras"))
      )
    )
  )
)

# Server
server <- function(input, output, session) {
  
  # Filtrar datos por barrio
  datos_filtrados <- reactive({
    datos %>%
      filter(barrio %in% input$barrio)
  })
  
  # Tabla
  output$tabla <- renderDT({
    datatable(datos_filtrados())
  })
  
  # Mapa con marcadores
  output$mapa <- renderLeaflet({
    leaflet(datos_filtrados()) %>%
      addTiles() %>%
      addMarkers(lng = ~long, lat = ~lat, popup = ~nombre)
  })
  
  # Gráfico de barras por barrio
  output$grafico_barras <- renderPlot({
    datos_filtrados() %>%
      count(barrio) %>%
      ggplot(aes(x = reorder(barrio, n), y = n)) +
      geom_bar(stat = "identity", fill = "steelblue") +
      coord_flip() +
      labs(x = "Barrio", y = "Cantidad de Centros Médicos", title = "Cantidad de Centros Médicos por Barrio") +
      theme_minimal()
  })
}

# Ejecutar la app
shinyApp(ui, server)



