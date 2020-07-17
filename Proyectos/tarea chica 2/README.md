# Tarea Chica 2

- Parte 1:

Para representar el modelo E-R de las tablas se asumió customer, invoice, track y genre como entidades. Por otro lado, se asumió invoice-items como una relación entre 
invoice y track. Debido a que existe una relación de "pertenencia" 1:N entre la factura y sus item y una relación de "identificación" 1:1 entre item y el track correspondiente, estas 
relaciones se pueden escribir como una sola 1:N que identifica qué canciones pertenecen a la factura. Otra forma de verlo es que la tabla de invoice_items posee las primary keys de las 
entidades y las relaciona junto a otros atributos.

EL diagrama solicitado es el archivo de nombre "Diagrama E-R.pdf".


- Parte 2:

1. Utilicé adicionalmente el DISTINC porque había gente que compró la misma canción en boletas diferentes.
<pre>
SELECT DISTINCT a.FirstName, a.LastName, d.Name
FROM customers a, invoices b, invoice_items c, tracks d
WHERE a.CustomerId = b.CustomerId AND b.InvoiceId = c.InvoiceId AND c.TrackId = d.TrackId
</pre>

2. Renombré el promedio para darle claridad (esto también lo hice en las siguientes preguntas).
<pre>
SELECT a.CustomerId, a.FirstName, a.LastName, AVG(b.Total) "Promedio Del Gasto"
FROM customers a, invoices b
WHERE a.CustomerId = b.CustomerId AND a.Country = "Canada"
GROUP BY a.CustomerId, a.FirstName, a.LastName;
</pre>

3.
<pre>
SELECT e.GenreId, e.Name, SUM(b.Total) "Total Recaudado"
FROM customers a, invoices b, invoice_items c, tracks d, genres e
WHERE a.CustomerId = b.CustomerId AND b.InvoiceId = c.InvoiceId AND c.TrackId = d.TrackId AND d.GenreId = e.GenreId AND e.Name LIKE "R%"
GROUP BY e.GenreId, e.Name
ORDER BY "Total Recaudado" DESC;
</pre>

4.
<pre>
SELECT a.CustomerId, a.FirstName, a.LastName, SUM(b.Total) "Total Recaudado"
FROM customers a, invoices b
WHERE a.CustomerId = b.CustomerId
GROUP BY a.CustomerId, a.FirstName, a.LastName
HAVING "Total Recaudado" > 40;
</pre>

BONUS. Consideré contar y ordenar por sólo las canciones que cumplen los requisitos.
<pre>
SELECT a.CustomerId, a.FirstName, a.LastName, SUM(c.Quantity) "Cantidad De Canciones"
FROM customers a, invoices b, invoice_items c, tracks d, genres e
WHERE a.CustomerId = b.CustomerId AND b.InvoiceId = c.InvoiceId AND c.TrackId = d.TrackId AND d.GenreId = e.GenreId AND e.Name = "Rock" AND d.Composer LIKE "%Mike%" 
GROUP BY a.CustomerId, a.FirstName, a.LastName
HAVING "Cantidad De Canciones" > 2
ORDER BY "Cantidad De Canciones" DESC;
</pre>
