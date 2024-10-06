import pandas as pd
import matplotlib.pyplot as plt

# Crear un DataFrame con los datos de la encuesta
data = {
    'Edad': [56, 53, 17, 35, 59, 59, 51, 20, 66, 52, 64, 21, 18, 45, 55, 60, 62]
}

df = pd.DataFrame(data)

# Definir los rangos de edad
bins = [0, 20, 30, 40, 50, 60, 70, 100]  # Por ejemplo, grupos de edades de 0-20, 21-30, etc.

# Crear la distribución de frecuencias
frecuencia_edad = pd.cut(df['Edad'], bins=bins).value_counts().sort_index()

# Crear el gráfico de barras
plt.figure(figsize=(10, 6))
frecuencia_edad.plot(kind='bar', color='skyblue')
plt.title('Distribución de Frecuencias por Rango de Edad')
plt.xlabel('Rango de Edad')
plt.ylabel('Frecuencia')
plt.xticks(rotation=45)
plt.grid(axis='y', linestyle='--', alpha=0.7)
plt.show()
