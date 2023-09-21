<details>

  <summary>Descripción de las tablas</summary>
  
# Descripción de las tablas:

**Tabla: City (Ciudad)**

- Descripción: Esta tabla almacena la información sobre diferentes ciudades.
- Columnas:
  - **id**: Una cadena única que identifica a cada ciudad.
  - **name**: El nombre de la ciudad.
  - **stateId**: Una cadena que se relaciona con la tabla de estados.

**Tabla: State (Estado)**

- Descripción: Esta tabla almacena la información sobre diferentes estados.
- Columnas:
  - **id**: Una cadena única que identifica a cada estado.
  - **name**: El nombre del estado.

**Tabla: Seller (Vendedor)**

- Descripción: Almacena la información sobre diferentes vendedores.
- Columnas:
  - **id**: Una cadena única que identifica a cada vendedor.
  - **name**: El nombre del vendedor.
  - **email**: El correo electrónico del vendedor, que debe ser único.

**Tabla: Customer (Cliente)**

- Descripción: Almacena la información sobre los clientes.
- Columnas:
  - **id**: Una cadena única que identifica a cada cliente.
  - **name**: El nombre del cliente.
  - **email**: El correo electrónico del cliente, que debe ser único.
  - **address**: La dirección del cliente.

**Tabla: Supplier (Proveedor)**

- Descripción: Almacena la información sobre los proveedores que suministran productos.
- Columnas:
  - **id**: Una cadena única que identifica a cada proveedor.
  - **name**: El nombre del proveedor.

**Tabla: ProductCategory (ProductoCategoría)**

- Descripción: Es una tabla intermedia que relaciona productos con categorías.
- Columnas:
  - **productId**: Una cadena que se relaciona con la tabla de productos.
  - **categoryId**: Una cadena que se relaciona con la tabla de categorías.

**Tabla: Product (Producto)**

- Descripción: Almacena la información sobre diferentes productos.
- Columnas:
  - **id**: Una cadena única que identifica a cada producto.
  - **name**: El nombre del producto.
  - **price**: El precio del producto.
  - **supplierId**: Una cadena que se relaciona con la tabla de proveedores.

**Tabla: Category (Categoría)**

- Descripción: Almacena diferentes categorías a las que pueden pertenecer los productos.
- Columnas:
  - **id**: Una cadena única que identifica a cada categoría.
  - **name**: El nombre de la categoría.

**Tabla: Order (Orden)**

- Descripción: Almacena la información sobre las órdenes realizadas por los clientes.
- Columnas:
  - **id**: Una cadena única que identifica cada orden.
  - **sellerId**: Una cadena que se relaciona con la tabla de vendedores.
  - **cityId**: Una cadena que se relaciona con la tabla de ciudades.
  - **invoiceId**: Un número entero que se relaciona con la tabla de facturas.
  - **date**: La fecha y hora cuando se realizó la orden.
  - **customerId**: Una cadena que se relaciona con la tabla de clientes.

**Tabla: ProductOrder (ProductoOrden)**

- Descripción: Es una tabla intermedia que relaciona productos con órdenes, mostrando qué productos están en qué orden.
- Columnas:
  - **id**: Una cadena única que identifica cada relación producto-orden.
  - **productId**: Una cadena que se relaciona con la tabla de productos.
  - **orderId**: Una cadena que se relaciona con la tabla de órdenes.
  - **quantity**: La cantidad del producto en la orden.
  - **price**: El precio del producto al momento de la orden.

**Tabla: Invoice (Factura)**

- Descripción: Almacena la información sobre las facturas de las órdenes.
- Columnas:
  - **id**: Una cadena única que identifica cada factura.
  - **date**: La fecha y hora cuando se generó la factura.
  - **status**: El estado de la factura, que puede ser: PAGADO, PENDIENTE o CANCELADO.
  - **orderId**: Una cadena que se relaciona con la tabla de órdenes.
  - **customerId**: Una cadena que se relaciona con la tabla de clientes.
  </details>

---

<details>
    <summary>Paso a paso para crear el esquema</summary>
  
# Paso a paso para crear el esquema:

### Paso 1: Crear la Tabla de Estados

1. Crea una tabla llamada "State".
2. Añade una columna "id" que será única para cada estado.
3. Agrega una columna "name" que almacenará el nombre de cada estado.
4. Importa los datos de la tabla State. Puedes encontrar el link a los datos [aquí](https://prevalentware.sharepoint.com/:x:/s/PrevalentWareUniversity/EdkLBp92fBROjzlQHAhZqegB20o85WPXZKyaZ-2cMortmQ?e=4oxcGM).

### Paso 2: Crear la Tabla de Ciudades

1. Crea una tabla llamada "City".
2. Añade una columna "id" que será única para cada ciudad.
3. Agrega una columna "name" para el nombre de la ciudad.
4. Añade una columna "stateId" que se relacionará con la tabla "State".
5. Establece una relación entre "stateId" en "City" y "id" en "State". Esta relación indica que cada ciudad pertenece a un estado.
6. Importa los datos de la tabla City. Puedes encontrar el link a los datos [aquí](https://prevalentware.sharepoint.com/:x:/s/PrevalentWareUniversity/ERZYQbPToCFDnICkMdreePwBLikVQpJi-JcsetEn--veYQ?e=DI1M60).

### Paso 3: Crear la Tabla de Vendedores

1. Crea una tabla llamada "Seller".
2. Añade una columna "id" que será única para cada vendedor.
3. Agrega columnas para "name" y "email". Asegúrate de que el "email" sea único para evitar duplicados.
4. Importa los datos de la tabla Seller. Puedes encontrar el link a los datos [aquí](https://prevalentware.sharepoint.com/:x:/s/PrevalentWareUniversity/EXTC9vOzg-1EjnCNpg_FOXsBiEwv9QpvYP5Swb5u8vE3kA?e=YiSput).

### Paso 4: Crear la Tabla de Clientes

1. Crea una tabla llamada "Customer".
2. Añade una columna "id" única para cada cliente.
3. Agrega columnas para "name", "email" y "address". Asegúrate de que el "email" sea único.
4. Importa los datos de la tabla Customer. Puedes encontrar el link a los datos [aquí](https://prevalentware.sharepoint.com/:x:/s/PrevalentWareUniversity/EdvYQ6TNqWtGlowYWl_lBX4Blruhq5ZF-YBqgtGXqBXapQ?e=f1bPSr).

### Paso 5: Crear la Tabla de Proveedores

1. Crea una tabla llamada "Supplier".
2. Añade una columna "id" única para cada proveedor.
3. Agrega una columna "name".
4. Importa los datos de la tabla Supplier. Puedes encontrar el link a los datos [aquí](https://prevalentware.sharepoint.com/:x:/s/PrevalentWareUniversity/Eaqp6HPPlj5BndlzN8vcybcBR1Hju-_odW7sxom5cPUXQA?e=Smarc4).

### Paso 6: Crear la Tabla de Categorías

1. Crea una tabla llamada "Category".
2. Añade una columna "id" única para cada categoría.
3. Agrega una columna "name".
4. Importa los datos de la tabla Category. Puedes encontrar el link a los datos [aquí](https://prevalentware.sharepoint.com/:x:/s/PrevalentWareUniversity/EYz9SqJ0CwBJi8_mDgNzY_UBw_68kRL2UV0WbJnNY6fS5A?e=DkgL1k).

### Paso 7: Crear la Tabla de Productos

1. Crea una tabla llamada "Product".
2. Añade una columna "id" única.
3. Agrega columnas para "name" y "price".
4. Añade una columna "supplierId" que se relacionará con la tabla "Supplier".
5. Establece una relación entre "supplierId" en "Product" y "id" en "Supplier".
6. Importa los datos de la tabla Category. Puedes encontrar el link a los datos [aquí](https://prevalentware.sharepoint.com/:x:/s/PrevalentWareUniversity/EYz9SqJ0CwBJi8_mDgNzY_UBw_68kRL2UV0WbJnNY6fS5A?e=bGpZ1Z).

### Paso 8: Crear la Tabla Relacional Producto-Categoría

1. Crea una tabla llamada "ProductCategory".
2. Añade dos columnas: "productId" y "categoryId".
3. Establece relaciones para ambas columnas: "productId" se relaciona con "id" en "Product" y "categoryId" se relaciona con "id" en "Category".
4. Importa los datos de la tabla Category. Puedes encontrar el link a los datos [aquí](https://prevalentware.sharepoint.com/:x:/s/PrevalentWareUniversity/EefoiM2GEb1EjM3TOEBe8s4B8aBO4fMsX66Fm-0iLAelrA?e=k8Qkrg).

### Paso 9: Crear la Tabla de Órdenes

1. Crea una tabla llamada "Order".
2. Añade las columnas "id", "sellerId", "cityId", "invoiceId" y "date".
3. Establece relaciones entre "sellerId" y "id" en "Seller", "cityId" y "id" en "City".
4. Importa los datos de la tabla Order. Puedes encontrar el link a los datos [aquí](https://prevalentware.sharepoint.com/:x:/s/PrevalentWareUniversity/EVx6iXDOpaRBryMQ962ZZK8B7VFwyr-1MlbpppbMU1rP8g?e=uZI4LQ).

### Paso 10: Crear la Tabla Relacional Producto-Orden

1. Crea una tabla llamada "ProductOrder".
2. Añade columnas para "productId", "orderId", "quantity" y "price".
3. Establece relaciones para "productId" y "id" en "Product", y "orderId" y "id" en "Order".
4. Importa los datos de la tabla Order. Puedes encontrar el link a los datos [aquí](https://prevalentware.sharepoint.com/:x:/s/PrevalentWareUniversity/EfZRnFANSIdOpz23b-mth7kBJWnQ8jYEBVKDCJVnnNpXFw?e=zgSa72).

### Paso 11: Crear la Tabla de Facturas

1. Crea una tabla llamada "Invoice".
2. Añade las columnas "id", "date", "status", "orderId" y "customerId".
3. Establece relaciones entre "orderId" y "id" en "Order", y "customerId" y "id" en "Customer".
4. Importa los datos de la tabla Invoice. Puedes encontrar el link a los datos [aquí](https://prevalentware.sharepoint.com/:x:/s/PrevalentWareUniversity/EVlurj1RGM5Pvr7j6aGlYf0BynxlhStk31tx7Rxw2ShKgA?e=KaJ3cN).

### Bonus!

Encuentra en este mismo repositorio el código [DDL](https://github.com/prevalentWare/prevalentu-sql-ejercicios-join-groupby/blob/main/ddl.sql) de creación de la base de datos por si tienes alguna duda!

</details>

---

<details>
  <summary>Ejercicios</summary>
# Ejercicios:

1. **Selección Básica**

- Listar todos los nombres de productos cuyo precio sea mayor que 100. Prueba tu resultado con productos que realmente cumplan este criterio.
- Mostrar todas las ordenes creadas en 2023.
- Mostrar todas las facturas pendientes.

2. **Joins**

   - Listar los nombres de los productos junto con el nombre de su proveedor.
   - Mostrar el nombre del cliente y el nombre del vendedor para el pedido con ID "\_\_\_\_".
   - Listar todos los productos que pertenecen a la categoría "\_\_\_\_".
   - Obtener el nombre y precio de todos los productos vendidos en el pedido con ID "\_\_\_\_".

3. **Joins con Filtrado**

   - Listar los nombres de todos los clientes que han hecho un pedido con el vendedor "\_\_\_\_".
   - Mostrar todos los productos que NO han sido ordenados por ningún cliente.
   - Listar las ciudades que tienen al menos 5 pedidos realizados.
   - Listar los clientes que tienen facturas pendientes.
   - Listar los vendedores con facturas canceladas.
   - Mostrar todos los vendedores y el número de pedidos que han manejado, incluyendo aquellos que no han manejado ningún pedido.
   - Listar todos los productos y las categorías a las que pertenecen, incluyendo aquellos productos que no tienen categorías asignadas.

4. **Group By y Funciones Agregadas**

   - Encontrar el precio promedio, máximo y mínimo de todos los productos.
   - Listar cada categoría y el número de productos que tiene.
   - Mostrar cada proveedor y el valor total de productos que ha suministrado (precio x cantidad para cada producto).
   - Identificar los 5 clientes que han hecho más pedidos.
   - Mostrar cada ciudad y el número total de pedidos realizados en ellas.

5. **Consultas Combinadas**

   - Para el pedido con ID "\_\_\_\_", mostrar el nombre del cliente, el nombre del vendedor, la ciudad y el total del pedido.
   - Listar los productos que han sido ordenados más de 50 veces en total.
   - Mostrar cada vendedor y su venta total en términos de cantidad de productos vendidos.

6. **Desafíos Adicionales**
   - Listar los 3 productos más populares en términos de cantidad total vendida.
   - Identificar a los clientes que han gastado más de 1000 en total en sus pedidos.
   - Mostrar las ciudades que han generado más ingresos para la tienda.
   - Listar los 3 proveedores que más venden en cada estado.
   - Encontrar el cliente que ha realizado el pedido más grande en términos de valor total.
   - Mostrar la categoría de productos más amplia, es decir, la que tiene la mayor cantidad de productos diferentes.
   - Mostrar la categoría de productos más vendida en términos de cantidad.
   - Identificar a los vendedores que han hecho ventas en al menos 3 ciudades diferentes.
   - Mostrar la cantidad de veces que un producto ha estado involucrado en una factura cancelada.
   - Determinar el top 10 de clientes con mayor deuda (verificando que la factura esté pendiente).
   - Mostrar los 5 proveedores cuyos productos tienen el precio de venta promedio más alto.
   - Identificar a los clientes que han comprado al menos 10 productos diferentes.

</details>
