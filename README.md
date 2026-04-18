# 🧠 Guía Completa de SQL – Desde Cero a Consultas Relacionales

## 🎯 Objetivo

Aprender a usar SQL para:

* Crear estructuras de datos
* Insertar y modificar información
* Consultar datos
* Relacionar tablas
* Entender cómo funcionan sistemas reales

---

# 📌 1. ¿Qué es SQL?

SQL (Structured Query Language) es el lenguaje que usamos para **interactuar con bases de datos**.

👉 Con SQL puedes:

* Crear tablas
* Guardar datos
* Consultar información
* Relacionar datos

---

# 🧱 2. Estructura básica de una base de datos

## 📦 Tabla

Una tabla guarda información en filas y columnas.

Ejemplo mental:

| id | nombre | ciudad     |
| -- | ------ | ---------- |
| 1  | Juan   | Valparaíso |

---

## 🔑 PRIMARY KEY

* Identifica cada fila de forma única
* No se repite

```sql id="z4sv3h"
id SERIAL PRIMARY KEY
```

---

## 🔗 FOREIGN KEY

* Conecta una tabla con otra

```sql id="93yhh3"
FOREIGN KEY (cliente_id) REFERENCES clientes(id)
```

---

# 🏗️ 3. Crear tablas

```sql id="y3mhq3"
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    ciudad VARCHAR(50)
);
```

---

# ➕ 4. Insertar datos

```sql id="06yqfc"
INSERT INTO clientes (nombre, ciudad)
VALUES ('Juan', 'Valparaíso');
```

---

# 🔍 5. Consultar datos (SELECT)

## Obtener todo

```sql id="py8rr8"
SELECT * FROM clientes;
```

---

## Seleccionar columnas

```sql id="k7x28k"
SELECT nombre, ciudad FROM clientes;
```

---

# 🎯 6. Filtrar datos (WHERE)

```sql id="6lfk2n"
SELECT * FROM clientes
WHERE ciudad = 'Valparaíso';
```

---

## Buscar texto

```sql id="0x7ysp"
SELECT * FROM clientes
WHERE nombre LIKE '%Juan%';
```

---

# 🔢 7. Funciones básicas

## COUNT()

```sql id="o1r4tx"
SELECT COUNT(*) FROM clientes;
```

---

## DISTINCT

```sql id="lj0qwr"
SELECT DISTINCT ciudad FROM clientes;
```

---

# 📊 8. Agrupar datos (GROUP BY)

```sql id="pf9pfp"
SELECT ciudad, COUNT(*)
FROM clientes
GROUP BY ciudad;
```

---

# 🔗 9. Relaciones entre tablas

## 🧠 Idea clave

> Las tablas se conectan usando llaves

---

## Ejemplo

* clientes → id
* pedidos → cliente_id

---

# 🔄 10. JOIN (muy importante)

## INNER JOIN

```sql id="y1ap7v"
SELECT *
FROM pedidos
JOIN clientes ON pedidos.cliente_id = clientes.id;
```

👉 Solo datos que coinciden

---

## LEFT JOIN

```sql id="i9pfxa"
SELECT *
FROM clientes
LEFT JOIN pedidos ON clientes.id = pedidos.cliente_id;
```

👉 Incluye clientes sin pedidos

---

# 🧮 11. Agrupación con JOIN

```sql id="a4wjvq"
SELECT clientes.nombre, COUNT(pedidos.id)
FROM clientes
LEFT JOIN pedidos ON clientes.id = pedidos.cliente_id
GROUP BY clientes.nombre;
```

---

# 🧠 12. Subconsultas

```sql id="6jbc2q"
SELECT nombre
FROM clientes
WHERE id IN (
    SELECT cliente_id FROM pedidos
);
```

---

# ✏️ 13. Actualizar datos

```sql id="b7l8yw"
UPDATE clientes
SET ciudad = 'Santiago'
WHERE id = 1;
```

---

# ❌ 14. Eliminar datos

```sql id="yax6i1"
DELETE FROM clientes
WHERE id = 1;
```

---

# 🔄 15. Transacciones

## 🧠 Concepto

> Todo se ejecuta o nada se ejecuta

---

```sql id="1o7eah"
BEGIN;

UPDATE cuentas SET saldo = saldo - 1000 WHERE id = 1;
UPDATE cuentas SET saldo = saldo + 1000 WHERE id = 2;

COMMIT;
```

---

## Cancelar cambios

```sql id="0snqjf"
ROLLBACK;
```

---

# ⚠️ 16. Errores comunes

* No usar PRIMARY KEY
* No entender relaciones
* Usar JOIN sin ON
* No usar GROUP BY correctamente
* Escribir SQL sin entender el problema

---

# 🧠 17. Cómo pensar en SQL

Antes de escribir código:

1. ¿Qué datos necesito?
2. ¿En qué tabla están?
3. ¿Necesito más de una tabla?
4. ¿Cómo se relacionan?
5. ¿Necesito filtrar o agrupar?

---

# 🎯 18. Flujo mental para consultas

```sql id="7ys0d9"
SELECT ...
FROM ...
JOIN ...
WHERE ...
GROUP BY ...
```

---

# 💡 19. Analogía simple

* SELECT → preguntar
* WHERE → filtrar
* JOIN → conectar
* GROUP BY → agrupar

---

# 🚀 20. Recomendaciones

* Practica escribiendo consultas
* Prueba errores (aprendes más)
* No memorices → entiende
* Piensa antes de escribir

---

# 🧠 Frase clave

> “SQL no se memoriza, se entiende”

---
