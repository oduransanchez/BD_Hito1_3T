CREATE TABLE encuesta (
    fecha_hora datetime,
    sexo varchar(10),
    edad int,
    comidas_dia int,
    frutas_dia int,
    verduras_semana int,
    legumbres_semana int,
    carnes_semana int,
    pescados_semana int,
    hidratos_semana int,
    desayuno_preferido varchar(50),
    alcohol_semana int
);

INSERT INTO encuesta VALUES (STR_TO_DATE('2023-06-03 13:38:12', '%Y-%m-%d %H:%i:%s'), 'Femenino', 56, 4, 1, 1, 3, 5, 3, 7, 'Tostada con aceite de oliva', 2);
INSERT INTO encuesta VALUES (STR_TO_DATE('2023-06-03 13:47:05', '%Y-%m-%d %H:%i:%s'), 'Femenino', 53, 3, 5, 5, 5, 5, 1, 1, 'Tostada con aceite de oliva', 1);
INSERT INTO encuesta VALUES (STR_TO_DATE('2023-06-03 14:06:32', '%Y-%m-%d %H:%i:%s'), 'Masculino', 17, 5, 4, 4, 2, 4, 2, 8, 'Ninguno de los anteriores', 0);
INSERT INTO encuesta VALUES (STR_TO_DATE('2023-06-03 14:07:29', '%Y-%m-%d %H:%i:%s'), 'Masculino', 35, 4, 2, 1, 5, 1, 0, 20, 'Ninguno de los anteriores', 3);
INSERT INTO encuesta VALUES (STR_TO_DATE('2023-06-03 14:32:26', '%Y-%m-%d %H:%i:%s'), 'Femenino', 59, 4, 3, 9, 3, 1, 1, 3, 'Tostada con aceite de oliva', 1);
INSERT INTO encuesta VALUES (STR_TO_DATE('2023-06-03 14:46:14', '%Y-%m-%d %H:%i:%s'), 'Femenino', 59, 3, 2, 7, 1, 4, 2, 4, 'Tostada con aceite de oliva', 0);
INSERT INTO encuesta VALUES (STR_TO_DATE('2023-06-03 14:49:06', '%Y-%m-%d %H:%i:%s'), 'Femenino', 51, 5, 1, 7, 2, 6, 6, 3, 'Bollería', 0);
INSERT INTO encuesta VALUES (STR_TO_DATE('2023-06-03 15:19:26', '%Y-%m-%d %H:%i:%s'), 'Masculino', 20, 4, 2, 6, 2, 4, 2, 7, 'Tostada con aceite de oliva', 1);
INSERT INTO encuesta VALUES (STR_TO_DATE('2023-06-03 15:23:15', '%Y-%m-%d %H:%i:%s'), 'Femenino', 66, 3, 3, 5, 2, 1, 3, 2, 'Tostada con aceite de oliva', 1);
INSERT INTO encuesta VALUES (STR_TO_DATE('2023-06-03 16:12:00', '%Y-%m-%d %H:%i:%s'), 'Masculino', 52, 3, 1, 7, 3, 2, 2, 6, 'Bollería', 2);
INSERT INTO encuesta VALUES (STR_TO_DATE('2023-06-03 16:13:25', '%Y-%m-%d %H:%i:%s'), 'Femenino', 64, 4, 3, 7, 3, 4, 3, 6, 'Tostada con aceite de oliva', 0);
INSERT INTO encuesta VALUES (STR_TO_DATE('2023-06-03 16:13:38', '%Y-%m-%d %H:%i:%s'), 'Femenino', 21, 4, 1, 6, 2, 2, 2, 7, 'Tostada con fiambre o queso', 1);
INSERT INTO encuesta VALUES (STR_TO_DATE('2023-06-03 16:15:58', '%Y-%m-%d %H:%i:%s'), 'Masculino', 18, 5, 3, 1, 5, 3, 4, 9, 'Tostada con aceite de oliva', 3);
INSERT INTO encuesta VALUES (STR_TO_DATE('2023-06-03 16:17:06', '%Y-%m-%d %H:%i:%s'), 'Femenino', 45, 5, 1, 6, 1, 2, 2, 2, 'Tostada con mantequilla y mermelada', 0);
INSERT INTO encuesta VALUES (STR_TO_DATE('2023-06-03 16:46:39', '%Y-%m-%d %H:%i:%s'), 'Femenino', 55, 4, 3, 2, 1, 2, 2, 2, 'Tostada con aceite de oliva', 4);
INSERT INTO encuesta VALUES (STR_TO_DATE('2023-06-03 17:20:08', '%Y-%m-%d %H:%i:%s'), 'Femenino', 60, 4, 2, 6, 3, 1, 3, 3, 'Tostada con aceite de oliva', 0);
INSERT INTO encuesta VALUES (STR_TO_DATE('2023-06-03 17:23:25', '%Y-%m-%d %H:%i:%s'), 'Masculino', 62, 3, 1, 4, 1, 0, 2, 2, 'Tostada con aceite de oliva', 2);

-- Para calcular la media de piezas de fruta diarias consumidas por hombres:
SELECT AVG(frutas_dia) AS media_frutas_hombres
FROM encuesta
WHERE sexo = 'Masculino';

-- Para calcular la media de piezas de fruta diarias consumidas por mujeres:
SELECT AVG(frutas_dia) AS media_frutas_mujeres
FROM encuesta
WHERE sexo = 'Femenino';


-- Media (promedio):
SELECT AVG(edad) AS media_edad FROM encuesta;
SELECT AVG(comidas_dia) AS media_comidas_dia FROM encuesta;
SELECT AVG(frutas_dia) AS media_frutas_dia FROM encuesta;
SELECT AVG(verduras_semana) AS media_verduras_semana FROM encuesta;
SELECT AVG(legumbres_semana) AS media_legumbres_semana FROM encuesta;
SELECT AVG(carnes_semana) AS media_carnes_semana FROM encuesta;
SELECT AVG(pescados_semana) AS media_pescados_semana FROM encuesta;
SELECT AVG(hidratos_semana) AS media_hidratos_semana FROM encuesta;
SELECT AVG(alcohol_semana) AS media_alcohol_semana FROM encuesta;


-- Mediana (valor medio):
SELECT
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY edad) AS mediana_edad,
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY comidas_dia) AS mediana_comidas_dia,
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY frutas_dia) AS mediana_frutas_dia,
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY verduras_semana) AS mediana_verduras_semana,
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY legumbres_semana) AS mediana_legumbres_semana,
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY carnes_semana) AS mediana_carnes_semana,
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY pescados_semana) AS mediana_pescados_semana,
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY hidratos_semana) AS mediana_hidratos_semana,
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY alcohol_semana) AS mediana_alcohol_semana
FROM encuesta;


-- Moda (valor más común):
SELECT
  MODE() WITHIN GROUP (ORDER BY edad) AS moda_edad,
  MODE() WITHIN GROUP (ORDER BY comidas_dia) AS moda_comidas_dia,
  MODE() WITHIN GROUP (ORDER BY frutas_dia) AS moda_frutas_dia,
  MODE() WITHIN GROUP (ORDER BY verduras_semana) AS moda_verduras_semana,
  MODE() WITHIN GROUP (ORDER BY legumbres_semana) AS moda_legumbres_semana,
  MODE() WITHIN GROUP (ORDER BY carnes_semana) AS moda_carnes_semana,
  MODE() WITHIN GROUP (ORDER BY pescados_semana) AS moda_pescados_semana,
  MODE() WITHIN GROUP (ORDER BY hidratos_semana) AS moda_hidratos_semana,
  MODE() WITHIN GROUP (ORDER BY alcohol_semana) AS moda_alcohol_semana
FROM encuesta;


-- Calcula la tendencia por rango de edad sobre el consumo de verduras usando la técnica de las dos medias.
SELECT
  CASE
    WHEN edad < 18 THEN 'Menor de 18'
    WHEN edad BETWEEN 18 AND 30 THEN '18-30'
    WHEN edad BETWEEN 31 AND 40 THEN '31-40'
    WHEN edad BETWEEN 41 AND 50 THEN '41-50'
    WHEN edad BETWEEN 51 AND 60 THEN '51-60'
    ELSE 'Mayor de 60'
  END AS rango_edad,
  AVG(verduras_semana) AS media_verduras_rango,
  (SELECT AVG(verduras_semana) FROM encuesta) AS media_verduras_global,
  CASE
    WHEN AVG(verduras_semana) > (SELECT AVG(verduras_semana) FROM encuesta) THEN 'Por encima de la media'
    ELSE 'Por debajo de la media'
  END AS tendencia
FROM
  encuesta
GROUP BY
  CASE
    WHEN edad < 18 THEN 'Menor de 18'
    WHEN edad BETWEEN 18 AND 30 THEN '18-30'
    WHEN edad BETWEEN 31 AND 40 THEN '31-40'
    WHEN edad BETWEEN 41 AND 50 THEN '41-50'
    WHEN edad BETWEEN 51 AND 60 THEN '51-60'
    ELSE 'Mayor de 60'
  END;

