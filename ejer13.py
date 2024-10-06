import pandas as pd
import matplotlib.pyplot as plt

# Supongamos que los datos obtenidos de la consulta SQL son los siguientes:
data = {
    'rango_edad': ['Menor de 18', '18-30', '31-40', '41-50', '51-60', 'Mayor de 60'],
    'media_verduras_rango': [3.5, 4.2, 4.0, 3.8, 4.5, 4.1],
    'tendencia': ['Por debajo de la media', 'Por encima de la media', 'Por debajo de la media', 
                  'Por debajo de la media', 'Por encima de la media', 'Por encima de la media']
}

# Crear un DataFrame
df = pd.DataFrame(data)

# Crear el gráfico de barras
fig, ax = plt.subplots()

# Colores para la tendencia
colors = df['tendencia'].map({'Por encima de la media': 'green', 'Por debajo de la media': 'red'})

# Crear las barras
bars = ax.bar(df['rango_edad'], df['media_verduras_rango'], color=colors)

# Añadir etiquetas y título
ax.set_xlabel('Rango de Edad')
ax.set_ylabel('Media de Verduras por Semana')
ax.set_title('Consumo de Verduras por Rango de Edad')

# Añadir leyenda personalizada
from matplotlib.lines import Line2D
legend_elements = [Line2D([0], [0], color='green', lw=4, label='Por encima de la media'),
                   Line2D([0], [0], color='red', lw=4, label='Por debajo de la media')]
ax.legend(handles=legend_elements, loc='upper left')

# Mostrar el gráfico
plt.show()
