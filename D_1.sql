SELECT * FROM public.online_retail
ORDER BY "Invoice_no" ASC, "Stock_code" ASC 

SELECT * FROM online_retail LIMIT 10;

SELECT * from online_retail where Quantity < 0;

SELECT * FROM online_retail WHERE "Quantity" < 0;

SELECT *
FROM online_retail
WHERE "Quantity" > 0;

<Day2>

SELECT * FROM public.online_retail;

Select * From public.online_retail Limit 5;

SELECT *
FROM online_retail
WHERE "Invoice_no" IS NULL
   OR "Stock_code" IS NULL
   OR "Description" IS NULL
   OR "Quantity" IS NULL
   OR "Invoice_Date" IS NULL
   OR "UnitPrice" IS NULL
   OR "Customer_id" IS NULL
   OR "Country" IS NULL;

UPDATE online_retail SET "Customer_id" = 'Unknown' WHERE "Customer_id" IS NULL;

Select * From online_retail where "Customer_id" is Null;

SELECT "Invoice_no", "Stock_code", COUNT(*)
FROM online_retail
GROUP BY "Invoice_no", "Stock_code"
HAVING COUNT(*) > 1;

ALTER TABLE online_retail ALTER COLUMN "Invoice_Date" TYPE 
DATE USING "Invoice_Date"::DATE;

Select * From public.online_retail Limit 5;
SET search_path TO public;
SELECT * FROM online_retail WHERE "Country" = 'Singapore';