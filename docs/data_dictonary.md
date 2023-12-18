# Data Dictionary

## InvoiceNo
- **Description:** Invoice number.
- **Type:** Nominal
- **Format:** 6-digit integral number
- **Note:** Uniquely assigned to each transaction. If the code starts with the letter 'c', it indicates a cancellation.

## StockCode
- **Description:** Product (item) code.
- **Type:** Nominal
- **Format:** 5-digit integral number
- **Note:** Uniquely assigned to each distinct product.

## Description
- **Description:** Product (item) name.
- **Type:** Nominal

## Quantity
- **Description:** The quantities of each product (item) per transaction.
- **Type:** Numeric

## InvoiceDate
- **Description:** Invoice Date and time.
- **Type:** Numeric
- **Format:** Day and time when each transaction was generated.

## UnitPrice
- **Description:** Unit price.
- **Type:** Numeric
- **Format:** Product price per unit in sterling.

## CustomerID
- **Description:** Customer number.
- **Type:** Nominal
- **Format:** 5-digit integral number
- **Note:** Uniquely assigned to each customer.

## Country
- **Description:** Country name.
- **Type:** Nominal
- **Note:** The name of the country where each customer resides.
