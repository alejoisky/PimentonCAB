# PimentonCAB
Analisis Fertilizacion de Pimenton
Fuente de los datos Los datos que se estudiaron se obtivieron de los registros realizados a un cultivo de pimenton que se sometio a 4 tratamientos de fertilizacion.

el objetivo es determinar la fertilizacion mas productiva para el cultivo de pimenton.

Contexto y obtencion de los datos 
El experimiento se desarrollo en el SENA-Centro Agropecuario de Buga, como una actividad de formacion entre aprendices e instructores en el area de agropecuaria.

Se plantaron 1.440 semillas de pimenton en 12 bandejas de germinacion de 10x12.

En el repositorio se encuentra un PDF que explica especificaciones de los tratamimientos y los recursos usados para el experimiento.
Archivo de Excel que contiene los datos estudiados.
Archivos csv, obtenidos por los ejercicios de sqlite3 de python, donde se segmentarons lo datos y se limpiaron los ceros.
Archivos ipynb donde se encuentra el codigo de graficacion y ejerccios CRUD de SQL en Python.

Estructura de los datos 
Los datos se estructuran en una tabla construida a partir de formularios de seguimiento que se le hicieron al cultivo en 3 etapas:

1.Germinacion: En esta etapa se mide con variable binaria si la semilla germina, 1 para germina y 0 para no germina.
2.Crecimiento: En esta fase se revisa la creacion de biomasa en gramos de la planta en la raiz y el tallo, para conocer la potencialidad de crecimiento.
3.Cosecha: Se hace seguimiento con medidas de peso y volumen del fruto para valorar la produccion de la planta.

Contamos con 1440 registros en 16 columnas con variables tipo FLOAT, INT y TEXT. 

En conclusión, la planta si mejora su productividad si se somete a un tratamiento de fertilización y aunque la cascarilla de arroz genere los frutos mas grandes por su variación no es muy conveniente para presupuestar una producción, somo si lo es el tratamiento con arena que genera pesos de fruta mas estandarizados, controlables y predecibles para una producción de pimentón.
