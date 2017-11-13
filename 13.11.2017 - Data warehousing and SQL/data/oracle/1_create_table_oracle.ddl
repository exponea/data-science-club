-- Generated by Oracle SQL Developer Data Modeler 17.3.0.261.1529
--   at:        2017-11-05 19:45:51 CET
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



CREATE TABLE model (
    cislo_modelu             INTEGER NOT NULL,
    nazov_farby              VARCHAR2(255),
    nazov_vybavy             VARCHAR2(255),
    datum_zaciatok_predaja   DATE,
    datum_koniec_predaja     DATE
);

ALTER TABLE model ADD CONSTRAINT model_pk PRIMARY KEY ( cislo_modelu );

CREATE TABLE objednavka (
    cislo_objednavky         INTEGER NOT NULL,
    datum_objednavky         DATE,
    cislo_stavu_objednavky   INTEGER NOT NULL,
    datum_stavu_objednavky   DATE
);

ALTER TABLE objednavka ADD CONSTRAINT objednavka_pk PRIMARY KEY ( cislo_objednavky );

CREATE TABLE objednavka_polozka (
    cislo_objednavky         INTEGER NOT NULL,
    cislo_poradove_polozky   INTEGER NOT NULL,
    cislo_modelu             INTEGER NOT NULL,
    objednane_mnozstvo       INTEGER,
    dodane_mnozstvo          INTEGER,
    jednotkova_cena          NUMBER(20,4),
    cislo_stavu_polozky      INTEGER NOT NULL,
    datum_stavu_polozky      DATE
);

ALTER TABLE objednavka_polozka ADD CONSTRAINT objednavka_polozka_pk PRIMARY KEY ( cislo_objednavky,
cislo_poradove_polozky );

CREATE TABLE stav_objednavky (
    cislo_stavu_objednavky   INTEGER NOT NULL,
    nazov_stavu_objednavky   VARCHAR2(255)
);

ALTER TABLE stav_objednavky ADD CONSTRAINT stav_objednavky_pk PRIMARY KEY ( cislo_stavu_objednavky );

CREATE TABLE stav_polozky (
    nazov_stavu_polozky   VARCHAR2(255),
    cislo_stavu_polozky   INTEGER NOT NULL
);

ALTER TABLE stav_polozky ADD CONSTRAINT stav_polozky_pk PRIMARY KEY ( cislo_stavu_polozky );

ALTER TABLE objednavka_polozka
    ADD CONSTRAINT model_fk FOREIGN KEY ( cislo_modelu )
        REFERENCES model ( cislo_modelu );

ALTER TABLE objednavka_polozka
    ADD CONSTRAINT objednavka_fk FOREIGN KEY ( cislo_objednavky )
        REFERENCES objednavka ( cislo_objednavky );

ALTER TABLE objednavka
    ADD CONSTRAINT stav_objednavky_fk FOREIGN KEY ( cislo_stavu_objednavky )
        REFERENCES stav_objednavky ( cislo_stavu_objednavky );

ALTER TABLE objednavka_polozka
    ADD CONSTRAINT stav_polozky_fk FOREIGN KEY ( cislo_stavu_polozky )
        REFERENCES stav_polozky ( cislo_stavu_polozky );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             0
-- ALTER TABLE                              9
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0