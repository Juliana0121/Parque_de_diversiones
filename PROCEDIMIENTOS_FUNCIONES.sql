 --Procedimientos Almacenados:

--1. Agregar un nuevo visitante.
DELIMITER //
CREATE PROCEDURE AddVisitor(IN p_FirstName VARCHAR(40), IN p_LastName VARCHAR(40), IN p_BirthDate DATETIME, IN p_Email VARCHAR(60), IN p_Phone VARCHAR(24), IN p_Address VARCHAR(70), IN p_City VARCHAR(40), IN p_State VARCHAR(40), IN p_Country VARCHAR(40), IN p_PostalCode VARCHAR(10))
BEGIN
    INSERT INTO `Visitor` (`FirstName`, `LastName`, `BirthDate`, `Email`, `Phone`, `Address`, `City`, `State`, `Country`, `PostalCode`) VALUES (p_FirstName, p_LastName, p_BirthDate, p_Email, p_Phone, p_Address, p_City, p_State, p_Country, p_PostalCode);
END//
DELIMITER ;
CALL AddVisitor('Juan', 'Perez', '1990-01-01', 'juan.perez@example.com', '123456789', 'Calle 123', 'Bogotá', 'Cundinamarca', 'Colombia', '110111');
--2. Registrar un nuevo mantenimiento para una atracción.
DELIMITER //
CREATE PROCEDURE AddMaintenance(IN p_AttractionId INT, IN p_Date DATE, IN p_Cost DECIMAL(10,2))
BEGIN
    INSERT INTO `Maintenance` (`AttractionId`, `MaintenanceDate`, `Details`) VALUES (p_AttractionId, p_Date, 'Mantenimiento realizado');
END//
DELIMITER ;
CALL AddMaintenance(1, '2024-01-01', 5000.00);
--3. Actualizar el precio de los tickets de un tipo específico.
DELIMITER //
CREATE PROCEDURE UpdateTicketPrice(IN p_TicketType VARCHAR(40), IN p_NewPrice DECIMAL(10,2))
BEGIN
    UPDATE `Ticket` SET `Price` = p_NewPrice WHERE `TicketType` = p_TicketType;
END//
DELIMITER ;
CALL UpdateTicketPrice('General', 55.00);
--4. Eliminar un visitante por su ID.

--5. Registrar una nueva visita de un visitante a una atracción.
DELIMITER //
CREATE PROCEDURE RegisterVisit(IN p_VisitorId INT, IN p_AttractionId INT, IN p_VisitDate DATE, IN p_Rating INT, IN p_Comment VARCHAR(255))
BEGIN
    INSERT INTO `VisitEvent` (`VisitorId`, `AttractionId`, `VisitDate`, `Rating`, `Comment`) VALUES (p_VisitorId, p_AttractionId, p_VisitDate, p_Rating, p_Comment);
END//
DELIMITER ;
CALL RegisterVisit(1, 1, '2024-01-01', 4, 'Excelente');


-- Funciones:

--1. Calcular el total de visitas a una atracción específica.
