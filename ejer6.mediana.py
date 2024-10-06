import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Crear un DataFrame con los datos de la encuesta
data = {
    'Edad': [56, 53, 17, 35, 59, 59, 51, 20, 66, 52, 64, 21, 18, 45, 55, 60, 62],
    'Comidas por día': [4, 3, 5, 4, 4, 3, 5, 4, 3, 3, 4, 4, 5, 5, 4, 4, 3],
    'Frutas por día': [1, 5, 4, 2, 3, 2, 1, 2, 3, 1, 3, 1, 3, 1, 3, 2, 1],
    'Verduras por semana': [1, 5, 4, 1, 9, 7, 7, 6, 5, 7, 7, 6, 1, 6, 2, 6, 4],
    'Legumbres por semana': [3, 5, 2, 5, 3, 1, 2, 2, 2, 3, 3, 2, 5, 1, 1, 3, 1],
    'Carnes por semana': [5, 5, 4, 1, 1, 4, 6, 4, 1, 2, 4, 2, 3, 2, 2, 1, 0],
    'Pescados por semana': [3, 1, 2, 0, 1, 4, 6, 2, 3, 2, 3, 2, 4, 2, 2, 3, 2],
    'Hidratos por semana': [7, 1, 8, 20, 3, 4, 3, 7, 2, 6, 6, 7, 9, 2, 2, 3, 2],
    'Alcohol por semana': [2, 1, 0, 3, 1, 0, 0, 1, 1, 2, 0, 1, 3, 0, 4, 0, 2]
}

df = pd.DataFrame(data)

# Crear gráfico de caja para cada variable
plt.figure(figsize=(12, 8))
sns.boxplot(data=df)
plt.title('Distribución de Variables de Encuesta')
plt.ylabel('Valor')
plt.xlabel('Variable')
plt.xticks(rotation=45)
plt.show()
