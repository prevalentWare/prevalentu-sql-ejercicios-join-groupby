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

1. Crea una tabla llamada "Estado".
2. Añade una columna "id" que será única para cada estado.
3. Agrega una columna "nombre" que almacenará el nombre de cada estado.

### Paso 2: Crear la Tabla de Ciudades

1. Crea una tabla llamada "Ciudad".
2. Añade una columna "id" que será única para cada ciudad.
3. Agrega una columna "nombre" para el nombre de la ciudad.
4. Añade una columna "stateId" que se relacionará con la tabla "Estado".
5. Establece una relación entre "stateId" en "Ciudad" y "id" en "Estado". Esta relación indica que cada ciudad pertenece a un estado.

### Paso 3: Crear la Tabla de Vendedores

1. Crea una tabla llamada "Vendedor".
2. Añade una columna "id" que será única para cada vendedor.
3. Agrega columnas para "nombre" y "email". Asegúrate de que el "email" sea único para evitar duplicados.

### Paso 4: Crear la Tabla de Clientes

1. Crea una tabla llamada "Cliente".
2. Añade una columna "id" única para cada cliente.
3. Agrega columnas para "nombre", "email" y "dirección". Asegúrate de que el "email" sea único.

### Paso 5: Crear la Tabla de Proveedores

1. Crea una tabla llamada "Proveedor".
2. Añade una columna "id" única para cada proveedor.
3. Agrega una columna "nombre".

### Paso 6: Crear la Tabla de Categorías

1. Crea una tabla llamada "Categoría".
2. Añade una columna "id" única para cada categoría.
3. Agrega una columna "nombre".

### Paso 7: Crear la Tabla de Productos

1. Crea una tabla llamada "Producto".
2. Añade una columna "id" única.
3. Agrega columnas para "nombre" y "precio".
4. Añade una columna "supplierId" que se relacionará con la tabla "Proveedor".
5. Establece una relación entre "supplierId" en "Producto" y "id" en "Proveedor".

### Paso 8: Crear la Tabla Relacional Producto-Categoría

1. Crea una tabla llamada "ProductoCategoría".
2. Añade dos columnas: "productId" y "categoryId".
3. Establece relaciones para ambas columnas: "productId" se relaciona con "id" en "Producto" y "categoryId" se relaciona con "id" en "Categoría".

### Paso 9: Crear la Tabla de Órdenes

1. Crea una tabla llamada "Orden".
2. Añade las columnas "id", "sellerId", "cityId", "invoiceId" y "date".
3. Establece relaciones entre "sellerId" y "id" en "Vendedor", "cityId" y "id" en "Ciudad".

### Paso 10: Crear la Tabla Relacional Producto-Orden

1. Crea una tabla llamada "ProductoOrden".
2. Añade columnas para "productId", "orderId", "cantidad" y "precio".
3. Establece relaciones para "productId" y "id" en "Producto", y "orderId" y "id" en "Orden".

### Paso 11: Crear la Tabla de Facturas

1. Crea una tabla llamada "Factura".
2. Añade las columnas "id", "date", "status", "orderId" y "customerId".
3. Establece relaciones entre "orderId" y "id" en "Orden", y "customerId" y "id" en "Cliente".

</details>
