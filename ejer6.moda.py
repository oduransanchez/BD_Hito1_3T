import pandas as pd
import matplotlib.pyplot as plt

# Crear un DataFrame con los datos de la moda de la encuesta
data = {
    'Variable': ['Edad', 'Comidas por día', 'Frutas por día', 'Verduras por semana',
                 'Legumbres por semana', 'Carnes por semana', 'Pescados por semana',
                 'Hidratos por semana', 'Alcohol por semana'],
    'Moda': [45, 4, 3, 6, 2, 1, 2, 3, 0]  # Valores inventados
}

df = pd.DataFrame(data)

# Crear el gráfico circular
plt.figure(figsize=(8, 8))
plt.pie(df['Moda'], labels=df['Variable'], autopct='%1.1f%%', startangle=140)
plt.title('Moda de Variables de Encuesta')
plt.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle.
plt.show()
