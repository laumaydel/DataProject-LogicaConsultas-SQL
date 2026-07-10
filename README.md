# Proyecto SQL — Base de datos Sakila (DVD Rental Store)

## 📌 Descripción del proyecto

Este proyecto consiste en el diseño y ejecución de consultas SQL sobre la base de datos **Sakila / Pagila** (versión PostgreSQL del clásico esquema de alquiler de películas "DVD Rental Store"), gestionada con **DBeaver**.

El objetivo es demostrar el manejo completo de SQL: desde consultas simples sobre una única tabla hasta relaciones entre tablas, subconsultas, vistas y estructuras de datos temporales, aplicando buenas prácticas de escritura de consultas y documentando la interpretación de cada resultado.

---

## 🗂️ Estructura del repositorio

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

---

## 🧬 Sobre la base de datos

Sakila/Pagila modela el negocio de una cadena de tiendas de alquiler de películas. Las tablas principales son:

| Tabla | Descripción |
|---|---|
| `film` | Catálogo de películas |
| `actor` / `film_actor` | Actores y su relación N:M con películas |
| `category` / `film_category` | Categorías y su relación N:M con películas |
| `language` | Idioma de cada película |
| `inventory` | Copias físicas de cada película por tienda |
| `rental` | Alquileres realizados |
| `payment` | Pagos asociados a los alquileres |
| `customer` / `staff` | Clientes y empleados |
| `store` | Tiendas |
| `address` / `city` / `country` | Datos de localización |

El diagrama completo está disponible en [`esquema/diagrama_er.png`](./esquema/diagrama_er.png) y el script de creación en [`esquema/esquema_ddl.sql`](./esquema/esquema_ddl.sql).

---

## 🔧 Cómo levantar el proyecto

1. Crear una base de datos PostgreSQL vacía (ej. `sakila`).
2. Abrir DBeaver → conectar contra esa base de datos.
3. Ejecutar el script [`esquema/esquema_ddl.sql`](./esquema/esquema_ddl.sql) para crear las tablas (o cargar el dump completo si se dispone de los datos).
4. Una vez cargado, abrir cualquier archivo de la carpeta `consultas/` en el editor SQL de DBeaver y ejecutar las consultas.

---

## 🧭 Guía de navegación (rúbrica → archivo)

| Punto de la rúbrica | Dónde encontrarlo |
|---|---|
| Manejo de DBeaver | `informe.pdf` → sección 1 |
| Esquema de la BBDD | `esquema/diagrama_er.png`, `esquema/esquema_ddl.sql` |
| Consultas de una sola tabla | `consultas/01_una_tabla.sql` |
| Relaciones entre tablas | `consultas/02_joins_relaciones.sql` |
| Subconsultas | `consultas/03_subconsultas.sql` |
| Vistas | `consultas/04_vistas.sql` |
| Estructuras temporales | `consultas/05_temporales.sql` |
| Buenas prácticas | Aplicadas en todos los `.sql` (alias, comentarios, formato) |
| Entendimiento del resultado | `informe.pdf` (interpretación de cada consulta) |

Para la explicación detallada de **por qué** se ha escrito cada consulta y **qué dice** su resultado, consultar informe.pdf.

---

## ✅ Estado del proyecto

Proyecto completado: incluye esquema documentado, consultas de los cinco bloques exigidos e informe técnico con la interpretación de resultados.
