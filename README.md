# 🏥 Centros Médicos Barriales - Shiny App

Esta es una aplicación desarrollada en **R Shiny** que permite visualizar y analizar centros médicos barriales de la Ciudad de Buenos Aires.

# Informe sobre el Dashboard de Centros Médicos Barriales

## Propósito del Dashboard

El propósito de este dashboard es proporcionar una herramienta interactiva para visualizar y analizar los centros médicos barriales de la Ciudad de Buenos Aires. La aplicación está desarrollada en R Shiny y permite a los usuarios explorar los datos de manera dinámica y obtener información relevante sobre la distribución y características de los centros médicos.

## Funcionalidades Principales

1. **Filtro por Barrio**: Permite seleccionar uno o varios barrios para visualizar los centros médicos correspondientes.
2. **Tabla Interactiva**: Muestra los datos filtrados en una tabla que permite ordenar y buscar información específica.
3. **Mapa con Marcadores**: Visualiza la ubicación de los centros médicos en un mapa, con marcadores que muestran información detallada al hacer clic.
4. **Gráfico de Barras**: Presenta un gráfico de barras que muestra la cantidad de centros médicos por barrio, facilitando la comparación visual entre diferentes áreas.

## Tipo de Análisis que Permite Realizar

El dashboard permite realizar varios tipos de análisis, entre los cuales se destacan:

- **Análisis Geográfico**: Visualizar la distribución geográfica de los centros médicos y identificar áreas con mayor o menor concentración de servicios médicos.
- **Análisis Comparativo**: Comparar la cantidad de centros médicos entre diferentes barrios para identificar posibles desigualdades en la distribución de servicios.
- **Análisis Detallado**: Acceder a información detallada de cada centro médico, incluyendo su nombre, dirección, especialidades y contacto, lo cual es útil para estudios específicos o toma de decisiones.

Este dashboard es una herramienta valiosa para investigadores, planificadores urbanos, autoridades sanitarias y cualquier persona interesada en la distribución y características de los centros médicos barriales en la Ciudad de Buenos Aires.


## 📌 Funcionalidades

- ✅ Filtro por **barrio**
- 📊 Tabla interactiva con los datos filtrados
- 🗺️ Mapa con marcadores de los centros médicos
- 📈 Gráfico de barras con la cantidad de centros por barrio

## 🧰 Requisitos

Asegurate de tener instalados los siguientes paquetes en R:

install.packages(c("shiny", "leaflet", "DT", "ggplot2", "dplyr"))

🚀 Cómo ejecutar la app

- Cloná este repositorio o descargá los archivos.
- Abrí el archivo .R de la app en RStudio.
- Asegurate de tener el archivo CSV centros-medicos-barriales.csv en la ruta  correcta.
- Ejecutá la app con:


shiny::runApp()

¡Gracias por visitar este proyecto! Si tenés sugerencias o mejoras, no dudes en abrir un issue o hacer un pull request.
