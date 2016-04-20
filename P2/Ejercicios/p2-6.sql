ALTER TABLE TRABAJADOR DISABLE CONSTRAINT trabajador_fk_ong;
ALTER TABLE COLABORACION DISABLE CONSTRAINT colaboracion_fk_ong;
ALTER TABLE PROYECTO DISABLE CONSTRAINT proyecto_fk_ong;
ALTER TABLE PARTICIPACION DISABLE CONSTRAINT participacion_fk_ong;
ALTER TABLE ACCION DISABLE CONSTRAINT accion_fk_ong;
DELETE FROM ONG
WHERE codigo='O01';
DELETE FROM PARTICIPACION
WHERE ong='O01';
DELETE FROM ACCION
WHERE ong='O01';
DELETE FROM PROYECTO
WHERE ong='O01';
DELETE FROM COLABORACION
WHERE ong='O01';
DELETE FROM TRABAJADOR
WHERE ong='O01';

ALTER TABLE ACCION ENABLE CONSTRAINT accion_fk_ong;
ALTER TABLE PARTICIPACION ENABLE CONSTRAINT participacion_fk_ong;
ALTER TABLE PROYECTO ENABLE CONSTRAINT proyecto_fk_ong;
ALTER TABLE COLABORACION ENABLE CONSTRAINT colaboracion_fk_ong;
ALTER TABLE TRABAJADOR ENABLE CONSTRAINT trabajador_fk_ong;