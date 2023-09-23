select * from pimenton_cab.pimentoncab;
SET SQL_SAFE_UPDATES=0;
#drop table pimenton_cab.FaseDos;
#drop table pimenton_cab.FaseUno;
#drop table pimenton_cab.FaseTres;
#drop table pimenton_cab.Sacrificadas;

CREATE TABLE pimenton_cab.FaseUno 
AS 
SELECT p.Semilla, p.Tratamiento, p.Germinacion FROM pimenton_cab.pimentoncab p;
SELECT * FROM pimenton_cab.FaseUno;


CREATE TABLE pimenton_cab.FaseDos 
AS 
SELECT p.Semilla, p.Germinacion, p.Tratamiento, p.Materia_Fresca_Raiz, p.Materia_Fresca_Tallo, p.Materia_Seca_Raiz, p.Materia_Seca_Tallo, Peso_Dia1 
FROM pimenton_cab.pimentoncab p;
delete from pimenton_cab.FaseDos WHERE Germinacion = 0;
delete from pimenton_cab.FaseDos WHERE Peso_Dia1 > 0;
delete from pimenton_cab.FaseDos WHERE Tratamiento = 'Espuma_Agricola';
alter table pimenton_cab.FaseDos drop column Peso_Dia1;
SELECT * FROM pimenton_cab.FaseDos;






CREATE TABLE pimenton_cab.FaseTres 
AS 
SELECT p.Semilla, p.Germinacion, p.Peso_Dia3, p.Peso_Dia2, p.Peso_Dia1 FROM pimenton_cab.pimentoncab p;
delete from pimenton_cab.FaseTres WHERE Peso_Dia1 = 0;
SELECT * FROM pimenton_cab.FaseTres;



CREATE TABLE pimenton_cab.Sacrificadas 
AS 
SELECT p.Semilla, p.Tratamiento, p.Germinacion, p.Materia_Fresca_Raiz FROM pimenton_cab.pimentoncab p;
alter table pimenton_cab.Sacrificadas modify column Germinacion varchar(30);
UPDATE pimenton_cab.Sacrificadas s SET s.Germinacion = 'sacrificada' WHERE s.Materia_Fresca_Raiz > 0;
delete from pimenton_cab.Sacrificadas where Materia_Fresca_Raiz = 0;
alter table pimenton_cab.Sacrificadas drop column Materia_Fresca_Raiz;
SELECT * FROM pimenton_cab.Sacrificadas;

