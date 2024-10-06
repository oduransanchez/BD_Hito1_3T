import pandas as pd
def calcular_tendencia_consumo_verduras(data):
    """
    Calcula la tendencia por rango de edad sobre el consumo de verduras utilizando la técnica de las dos medias.

    Args:
    - data: DataFrame con las columnas 'Edad' y 'Verduras_semana'.

    Returns:
    - media_verduras_grupo_bajo: Media de consumo de verduras para el grupo con bajo consumo.
    - media_verduras_grupo_alto: Media de consumo de verduras para el grupo con alto consumo.
    """
    # Definir un punto de corte para dividir el conjunto de datos en dos grupos
    punto_corte = data['Verduras_semana'].median()

    # Dividir el conjunto de datos en dos grupos según el punto de corte
    grupo_bajo = data[data['Verduras_semana'] <= punto_corte]
    grupo_alto = data[data['Verduras_semana'] > punto_corte]

    # Calcular la media de verduras consumidas por grupo
    media_verduras_grupo_bajo = grupo_bajo['Verduras_semana'].mean()
    media_verduras_grupo_alto = grupo_alto['Verduras_semana'].mean()

    return media_verduras_grupo_bajo, media_verduras_grupo_alto

# Ejemplo de uso
data_ejemplo = {
    'Edad': [56, 53, 17, 35, 59, 59, 51, 20, 66, 52, 64, 21, 18, 45, 55, 60, 62],
    'Verduras_semana': [1, 5, 4, 1, 9, 7, 7, 6, 2, 7, 6, 7, 2, 6, 1, 6, 4]
}

df_ejemplo = pd.DataFrame(data_ejemplo)
media_bajo, media_alto = calcular_tendencia_consumo_verduras(df_ejemplo)
print("Media de verduras consumidas en el grupo con bajo consumo:", media_bajo)
print("Media de verduras consumidas en el grupo con alto consumo:", media_alto)
