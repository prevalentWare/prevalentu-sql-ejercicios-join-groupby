<details>

  <summary>Click to expand!</summary>
  
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