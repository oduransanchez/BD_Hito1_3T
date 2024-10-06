import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

# Supongamos que estos son los resultados de tus consultas SQL
data = {
    'Variable': ['Edad', 'Comidas por día', 'Frutas por día', 'Verduras por semana',
                 'Legumbres por semana', 'Carnes por semana', 'Pescados por semana',
                 'Hidratos por semana', 'Alcohol por semana'],
    'Media': [40, 3, 5, 10, 8, 4, 2, 6, 2]  # Ejemplo de datos inventados
}

# Convierte el diccionario a un DataFrame de pandas
df = pd.DataFrame(data)

# Gráfico de barras para la media de las diferentes variables
plt.figure(figsize=(10, 6))
plt.bar(df['Variable'], df['Media'], color='skyblue')
plt.title('Media de Variables de Encuesta')
plt.xlabel('Variable')
plt.ylabel('Media')
plt.xticks(rotation=45, ha='right')
plt.show()
