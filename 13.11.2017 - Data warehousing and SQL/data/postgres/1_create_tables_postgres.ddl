CREATE TABLE model (
    cislo_modelu             INTEGER NOT NULL,
    nazov_farby              VARCHAR(255),
    nazov_vybavy             VARCHAR(255),
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
    jednotkova_cena          NUMERIC(20,4),
    cislo_stavu_polozky      INTEGER NOT NULL,
    datum_stavu_polozky      DATE
);

ALTER TABLE objednavka_polozka ADD CONSTRAINT objednavka_polozka_pk PRIMARY KEY ( cislo_objednavky,
cislo_poradove_polozky );

CREATE TABLE stav_objednavky (
    cislo_stavu_objednavky   INTEGER NOT NULL,
    nazov_stavu_objednavky   VARCHAR(255)
);

ALTER TABLE stav_objednavky ADD CONSTRAINT stav_objednavky_pk PRIMARY KEY ( cislo_stavu_objednavky );

CREATE TABLE stav_polozky (
    nazov_stavu_polozky   VARCHAR(255),
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

COMMIT WORK;