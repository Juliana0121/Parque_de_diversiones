# PARQUE DE DIVERSIONES
 🎉

# Consultas

1. **Obtener todas las atracciones operativas.**
```sql
SELECT * FROM `Attraction` WHERE Attraction.Status = 'Operativa';
```

2. **Listar todos los visitantes que se encuentran en la base de datos.**
```sql
SELECT * FROM Visitor
```

3. **Mostrar los eventos programados junto con su precio.**
```sql

```

4.  **Obtener el nombre y fecha de contratación de todos los empleados.**
```sql
SELECT `FirstName`, `LastName`, `HireDate` FROM Employee;
```

5.  **Listar todos los boletos vendidos y su tipo.**
```sql
SELECT * FROM `Ticket` WHERE `TicketType` = 'VIP';
```

6. **Obtener el nombre de los visitantes y las atracciones que visitaron.**
```sql
SELECT * FROM Visitor;
```

7. **Listar los empleados que participaron en eventos, junto con el nombre del evento.**
```sql
SELECT E.FirstName, E.LastName, E.JobTitle, EV.EventId, EV.Name
FROM Employee E
JOIN EmployeeEvent EE ON E.EmployeeId = EE.EmployeeId
JOIN Event EV ON EE.EventId = EV.EventId;
```

8.  **Mostrar los detalles de mantenimiento realizados por cada empleado, junto con la atracción.**
```sql
SELECT M.MaintenanceId, M.AttractionId, M.EmployeeId, M.MaintenanceDate, A.Name, E.FirstName, E.LastName
FROM Maintenance M
JOIN Attraction A ON M.AttractionId = A.AttractionId
JOIN Employee E ON M.EmployeeId = E.EmployeeId;
```

9.  **Obtener el nombre del visitante y la atracción que calificó junto con la puntuación.**
```sql
SELECT V.FirstName, V.LastName, A.Name, VR.Rating
FROM Visitor V
JOIN Visit VR ON V.VisitorId = VR.VisitorId
JOIN Attraction A ON VR.AttractionId = A.AttractionId;
```

10. **Listar los visitantes que asistieron a eventos, con el nombre del evento.**
```sql
SELECT A.AttractionId, COUNT(V.VisitorId) AS VisitCount
FROM Attraction A
JOIN Visit V ON A.AttractionId = V.AttractionId
GROUP BY A.AttractionId;
```

11.  **Contar cuántas visitas ha tenido cada atracción.**
```sql
SELECT E.FirstName, E.LastName, E.JobTitle, EV.EventId, EV.Name
FROM Employee E
JOIN EmployeeEvent EE ON E.EmployeeId = EE.EmployeeId
JOIN Event EV ON EE.EventId = EV.EventId;
```

12. **Obtener el precio promedio de los tickets vendidos por tipo.**
```sql
SELECT TicketType, AVG(Price) AS AveragePrice
FROM Ticket
GROUP BY TicketType;
```

13.  **Contar cuántos empleados hay en cada ciudad.**
```sql
SELECT City, COUNT(EmployeeId) AS EmployeeCount
FROM Employee
GROUP BY City;
```

14. **Listar el total de visitantes por país.**
```sql
SELECT Country, COUNT(EmployeeId) AS EmployeeCount
FROM Employee
GROUP BY Country;
```

15.  **Obtener el número total de eventos y su precio promedio.**
```sql
SELECT COUNT(EventId) AS EventCount, AVG(Price) AS AveragePrice
FROM Event;
```

16. **Obtener el nombre de las atracciones que tienen una capacidad máxima mayor que el promedio.**
```sql

```

17.  **Listar los empleados que han trabajado en más de un evento.**
```sql

```

18. **Obtener las atracciones que no han sido visitadas en la última semana.**
```sql
```

19.  **Listar los visitantes que compraron un boleto VIP.**
```sql
SELECT COUNT(EventId) AS EventCount, AVG(Price) AS AveragePrice
FROM Event;
```

20. **Mostrar los empleados cuyo salario (de la tabla EmployeeSalary) es mayor al salario promedio.**
```sql

```

25.  **Cambiar la ciudad de todos los empleados en Bogotá a Medellín.**
```sql
UPDATE Employee
SET City = 'Medellín'
WHERE City = 'Bogotá';
```




# AUTOR
- JULIANA NUMA
