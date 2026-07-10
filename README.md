# Proyecto SQL — Base de datos Sakila 

## Descripción del proyecto

Este proyecto consiste en el diseño y ejecución de consultas SQL sobre la base de datos **Sakila**, gestionada con **DBeaver**.

El objetivo es demostrar el manejo completo de SQL: desde consultas simples sobre una única tabla hasta relaciones entre tablas, subconsultas, vistas y estructuras de datos temporales documentando la interpretación de cada resultado.


## Estructura del repositorio

```
DataProject-LogicaConsultas-SQL/
├── README.md                     ← este archivo
├── informe.pdf                   ← informe con justificación e interpretación de cada consulta
├── esquema/
│   ├── diagrama_er.png           ← diagrama entidad-relación de la BBDD
│   └── esquema_ddl.sql           ← script de creación de tablas (DDL)
└── consultas/
    ├── 01_una_tabla.sql          ← consultas sobre una sola tabla
    ├── 02_joins_relaciones.sql   ← consultas con relaciones entre tablas (JOINs)
    ├── 03_subconsultas.sql       ← subconsultas
    ├── 04_vistas.sql             ← creación y uso de vistas
    └── 05_temporales.sql         ← tablas temporales
```

## Sobre la base de datos

Sakila es una base de datos que modela el negocio de una cadena de tiendas de alquiler de películas. Para poder ver todas las tablas y relaciones que existen entre ellas se puede consultar el diagrama Entidad-Relación en formato _.png_ dentro de este proyecto. 
