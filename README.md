### API de Productos
Esta es una API RESTful para gestionar un catálogo de productos. Permite realizar operaciones CRUD (Create, Read, Update, Delete) sobre los productos.

### Requisitos para el uso de la API
- Visual Studio 2022 o superior
- .NET 8 o superior
- SQL Server
### Instrucciones
###### Descarga e Instalación



1.	Clona el repositorio de GitHub:

      https://github.com/elizzzAb/API.git


2.	Abre el proyecto en Visual Studio


3.	Actualiza la cadena de conexión a la base de datos en el archivo appsettings.json:

      "ConnectionStrings": {
        "DefaultConnection": "Data Source=LAPTOP-GK1DJVHC\\SQLEXPRESS;Initial Catalog=API;Integrated Security=True;Trust Server Certificate=True"
      }


      Reemplaza los valores de “LAPTOP-GK1DJVHC”, “API” con los datos de tu instancia de SQL Server.


4.	Ejecuta las migraciones de Entity Framework Core para crear la base de datos:

      dotnet ef database update

5.	Inicia la aplicación:

      dotnet run


Una vez que la aplicación esté en ejecución, podrás acceder a la documentación Swagger de la API en la siguiente URL:
https://localhost:7230/swagger

-----
[Imagen Vista Web de Swagger](https://drive.google.com/file/d/1J8YNrij_JAFhnlIJrDrqRcXEOTj0SRwM/view?usp=sharing)
-----

Esta página web, conocida como "Swagger UI", te permitirá explorar y probar los diferentes endpoints de la API de una manera interactiva. Aquí podrás ver los diferentes métodos HTTP (GET, POST, PUT, DELETE) disponibles, así como los parámetros y respuestas esperadas para cada uno. Al probarlo en Postman, es necesario que se ejecute desde la página, por ello, haz clic en “Try it out” y luego en “Execute”.

La API estará disponible en https://localhost:7230/api/Producto.

### Uso de la API
Puedes probar la API utilizando Postman o cualquier otra herramienta de desarrollo de API. En esta ocasión, realizaremos las pruebas e instrucciones para probarla en Postman.

### 1.	Obtener todos los productos (GET)
* Abre Postman.
* Crea una nueva solicitud de tipo "GET" con la URL https://localhost:7230/api/Producto.
* Haz clic en el botón "Send" para enviar la solicitud.
* Revisa la respuesta, que debería incluir una lista de todos los productos.

### 2.	Obtener un producto por ID (GET)
* Abre Postman.
* Crea una nueva solicitud de tipo "GET" con la URL https://localhost:7230/api/Producto/{id}, reemplazando {id} por el ID del producto que deseas obtener.
* Haz clic en el botón "Send" para enviar la solicitud.
* Revisa la respuesta, que debería incluir una lista de todos los productos.

### 3.	Crear un nuevo producto (POST)
* Abre Postman.
* Crea una nueva solicitud de tipo "POST" con la URL https://localhost:7230/api/Producto.
* En la pestaña "Body", selecciona el formato "raw" y elige "JSON" como tipo de contenido.
* Agrega el siguiente JSON en el cuerpo de la solicitud:
{
  "nombre": "Producto 1",
  "precio": 9.99,
  "stock": 10
}

(No es necesario poner el Id, debido a que es autoincremental)

* Haz clic en el botón "Send" para enviar la solicitud.
* Revisa la respuesta, que debería incluir los detalles del nuevo producto creado.

### 4.	Actualizar un producto (PUT)
* Abre Postman.
* Crea una nueva solicitud de tipo "PUT" con la URL https://localhost:7230/api/Producto/{id}, reemplazando {id} por el ID del producto que deseas actualizar.
* En la pestaña "Body", selecciona el formato "raw" y elige "JSON" como tipo de contenido.
* Agrega el siguiente JSON en el cuerpo de la solicitud, actualizando los valores según tus necesidades:
{
  "id": 1,
  "nombre": "Producto Actualizado",
  "precio": 12.99,
  "stock": 15
}

* Haz clic en el botón "Send" para enviar la solicitud.
* Revisa la respuesta, que debería incluir los detalles del producto actualizado.

### 5.	Eliminar un producto (DELETE)
* Abre Postman.
* Crea una nueva solicitud de tipo "DELETE" con la URL https://localhost:7230/api/Producto/{id}, reemplazando {id} por el ID del producto que deseas eliminar.
* Haz clic en el botón "Send" para enviar la solicitud.
* Revisa la respuesta, que debería ser un código de estado 204 (No Content) si la eliminación se realizó correctamente.


###### ¡Disfruta de tu API de Productos!

> ¡Felicidades! Ya has configurado y probado la API de Productos. Ahora puedes comenzar a integrarla en tus propias aplicaciones y disfrutar de todas las funcionalidades que ofrece.


----
[Video Prueba en Postman](https://drive.google.com/file/d/1BLcsHoEipdiA-S6hb_rk5JIUvT9YRcwj/view?usp=sharing)
---
