# Microservicio Productos (Spring Boot + MySQL)

## Estructura
- `model/` -> Entidad JPA `Producto`
- `repository/` -> `ProductoRepository` (JpaRepository)
- `service/` -> `ProductoService` + `ProductoServiceImpl`
- `controller/` -> `ProductoController` (REST)
- `exception/` -> Manejo de errores (404)

## Base de datos
Nombre: **productos_db**  
Usuario: **root**  
Password: **Copernico2025**

Script SQL: `db/crear_bd_y_tabla.sql`

> En `application.properties` el microservicio usa:
> `jdbc:mysql://localhost:3306/productos_db`

## Ejecutar
1. Crear la BD y tabla:
   - Abrir MySQL y ejecutar el archivo `db/crear_bd_y_tabla.sql` (o copiar/pegar).
2. Levantar el proyecto:
   - `mvn spring-boot:run`

## Endpoints
Base URL: `http://localhost:8080/api/productos`

- `GET /api/productos` -> listar
- `GET /api/productos/{id}` -> obtener por id
- `POST /api/productos` -> crear  
  Body:
  ```json
  { "nombre": "Teclado", "precio": 19990.00 }
  ```
- `PUT /api/productos/{id}` -> actualizar  
  Body:
  ```json
  { "nombre": "Teclado mecánico", "precio": 24990.00 }
  ```
- `DELETE /api/productos/{id}` -> eliminar
