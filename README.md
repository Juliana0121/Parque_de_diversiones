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

11.  **Obtener el nombre y fecha de contratación de todos los empleados.**
```sql
SELECT `FirstName`, `LastName`, `HireDate` FROM Employee;
```


12. **Mostrar los eventos programados junto con su precio.**
```sql

```

13.  **Obtener el nombre y fecha de contratación de todos los empleados.**
```sql
SELECT `FirstName`, `LastName`, `HireDate` FROM Employee;
```




# AUTOR
- JULIANA NUMA
