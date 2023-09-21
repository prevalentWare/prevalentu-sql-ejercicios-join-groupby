-- DROP SCHEMA ecommerce;

CREATE SCHEMA ecommerce AUTHORIZATION postgres;

-- DROP TYPE ecommerce."Enum_InvoiceStatus";

CREATE TYPE ecommerce."Enum_InvoiceStatus" AS ENUM (
	'PAID',
	'PENDING',
	'CANCELED');
-- ecommerce."Category" definition

-- Drop table

-- DROP TABLE ecommerce."Category";

CREATE TABLE ecommerce."Category" (
	id text NOT NULL,
	"name" text NOT NULL,
	CONSTRAINT "Category_pkey" PRIMARY KEY (id)
);


-- ecommerce."Customer" definition

-- Drop table

-- DROP TABLE ecommerce."Customer";

CREATE TABLE ecommerce."Customer" (
	id text NOT NULL,
	"name" text NOT NULL,
	email text NOT NULL,
	address text NOT NULL,
	CONSTRAINT "Customer_pkey" PRIMARY KEY (id)
);
CREATE UNIQUE INDEX "Customer_email_key" ON ecommerce."Customer" USING btree (email);


-- ecommerce."Seller" definition

-- Drop table

-- DROP TABLE ecommerce."Seller";

CREATE TABLE ecommerce."Seller" (
	id text NOT NULL,
	"name" text NOT NULL,
	email text NOT NULL,
	CONSTRAINT "Seller_pkey" PRIMARY KEY (id)
);
CREATE UNIQUE INDEX "Seller_email_key" ON ecommerce."Seller" USING btree (email);


-- ecommerce."State" definition

-- Drop table

-- DROP TABLE ecommerce."State";

CREATE TABLE ecommerce."State" (
	id text NOT NULL,
	"name" text NOT NULL,
	CONSTRAINT "State_pkey" PRIMARY KEY (id)
);


-- ecommerce."Supplier" definition

-- Drop table

-- DROP TABLE ecommerce."Supplier";

CREATE TABLE ecommerce."Supplier" (
	id text NOT NULL,
	"name" text NOT NULL,
	CONSTRAINT "Supplier_pkey" PRIMARY KEY (id)
);


-- ecommerce."_prisma_migrations" definition

-- Drop table

-- DROP TABLE ecommerce."_prisma_migrations";

CREATE TABLE ecommerce."_prisma_migrations" (
	id varchar(36) NOT NULL,
	checksum varchar(64) NOT NULL,
	finished_at timestamptz NULL,
	migration_name varchar(255) NOT NULL,
	logs text NULL,
	rolled_back_at timestamptz NULL,
	started_at timestamptz NOT NULL DEFAULT now(),
	applied_steps_count int4 NOT NULL DEFAULT 0,
	CONSTRAINT "_prisma_migrations_pkey" PRIMARY KEY (id)
);


-- ecommerce."City" definition

-- Drop table

-- DROP TABLE ecommerce."City";

CREATE TABLE ecommerce."City" (
	id text NOT NULL,
	"name" text NOT NULL,
	"stateId" text NOT NULL,
	CONSTRAINT "City_pkey" PRIMARY KEY (id),
	CONSTRAINT "City_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES ecommerce."State"(id) ON DELETE RESTRICT ON UPDATE CASCADE
);


-- ecommerce."Order" definition

-- Drop table

-- DROP TABLE ecommerce."Order";

CREATE TABLE ecommerce."Order" (
	id text NOT NULL,
	"customerId" text NOT NULL,
	"sellerId" text NOT NULL,
	"cityId" text NOT NULL,
	"date" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT "Order_pkey" PRIMARY KEY (id),
	CONSTRAINT "Order_cityId_fkey" FOREIGN KEY ("cityId") REFERENCES ecommerce."City"(id) ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT "Order_customerId_fkey" FOREIGN KEY ("customerId") REFERENCES ecommerce."Customer"(id) ON DELETE RESTRICT ON UPDATE CASCADE
);


-- ecommerce."Product" definition

-- Drop table

-- DROP TABLE ecommerce."Product";

CREATE TABLE ecommerce."Product" (
	id text NOT NULL,
	"name" text NOT NULL,
	price numeric(65, 30) NOT NULL,
	"supplierId" text NOT NULL,
	CONSTRAINT "Product_pkey" PRIMARY KEY (id),
	CONSTRAINT "Product_supplierId_fkey" FOREIGN KEY ("supplierId") REFERENCES ecommerce."Supplier"(id) ON DELETE RESTRICT ON UPDATE CASCADE
);


-- ecommerce."ProductCategory" definition

-- Drop table

-- DROP TABLE ecommerce."ProductCategory";

CREATE TABLE ecommerce."ProductCategory" (
	"productId" text NOT NULL,
	"categoryId" text NOT NULL,
	CONSTRAINT "ProductCategory_pkey" PRIMARY KEY ("productId", "categoryId"),
	CONSTRAINT "ProductCategory_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES ecommerce."Category"(id) ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT "ProductCategory_productId_fkey" FOREIGN KEY ("productId") REFERENCES ecommerce."Product"(id) ON DELETE RESTRICT ON UPDATE CASCADE
);


-- ecommerce."ProductOrder" definition

-- Drop table

-- DROP TABLE ecommerce."ProductOrder";

CREATE TABLE ecommerce."ProductOrder" (
	id text NOT NULL,
	"productId" text NOT NULL,
	"orderId" text NOT NULL,
	quantity int4 NOT NULL,
	price numeric(65, 30) NOT NULL,
	CONSTRAINT "ProductOrder_pkey" PRIMARY KEY (id),
	CONSTRAINT "ProductOrder_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES ecommerce."Order"(id) ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT "ProductOrder_productId_fkey" FOREIGN KEY ("productId") REFERENCES ecommerce."Product"(id) ON DELETE RESTRICT ON UPDATE CASCADE
);


-- ecommerce."Invoice" definition

-- Drop table

-- DROP TABLE ecommerce."Invoice";

CREATE TABLE ecommerce."Invoice" (
	id text NOT NULL,
	"date" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
	status ecommerce."Enum_InvoiceStatus" NOT NULL,
	"orderId" text NOT NULL,
	"customerId" text NOT NULL,
	CONSTRAINT "Invoice_pkey" PRIMARY KEY (id),
	CONSTRAINT "Invoice_customerId_fkey" FOREIGN KEY ("customerId") REFERENCES ecommerce."Customer"(id) ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT "Invoice_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES ecommerce."Order"(id) ON DELETE RESTRICT ON UPDATE CASCADE
);
CREATE UNIQUE INDEX "Invoice_orderId_key" ON ecommerce."Invoice" USING btree ("orderId");



