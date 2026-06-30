CREATE TABLE nauczyciele (
    nauczyciel_id INT PRIMARY KEY AUTO_INCREMENT,
    imie VARCHAR(100) NOT NULL,
    nazwisko VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE,
    tytul VARCHAR(100)
) ENGINE=InnoDB;

CREATE TABLE przedmioty (
    przedmiot_id INT PRIMARY KEY AUTO_INCREMENT,
    nazwa VARCHAR(150) NOT NULL,
    skrot VARCHAR(20) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE klasy (
    klasa_id INT PRIMARY KEY AUTO_INCREMENT,
    nazwa VARCHAR(20) NOT NULL,
    wychowawca_id INT,
    CONSTRAINT fk_klasy_nauczyciele
        FOREIGN KEY (wychowawca_id) REFERENCES nauczyciele(nauczyciel_id)
        ON DELETE SET NULL
) ENGINE=InnoDB;

CREATE TABLE uczniowie (
    uczen_id INT PRIMARY KEY AUTO_INCREMENT,
    imie VARCHAR(100) NOT NULL,
    nazwisko VARCHAR(100) NOT NULL,
    pesel VARCHAR(11) UNIQUE NOT NULL,
    klasa_id INT,
    CONSTRAINT fk_uczniowie_klasy
        FOREIGN KEY (klasa_id) REFERENCES klasy(klasa_id)
        ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE oceny (
    ocena_id INT PRIMARY KEY AUTO_INCREMENT,
    uczen_id INT NOT NULL,
    przedmiot_id INT NOT NULL,
    wartosc DECIMAL(3, 2) NOT NULL,
    data_wystawienia DATE NOT NULL,
    nauczyciel_id INT,
    CONSTRAINT fk_oceny_uczniowie
        FOREIGN KEY (uczen_id) REFERENCES uczniowie(uczen_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_oceny_przedmioty
        FOREIGN KEY (przedmiot_id) REFERENCES przedmioty(przedmiot_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_oceny_nauczyciele
        FOREIGN KEY (nauczyciel_id) REFERENCES nauczyciele(nauczyciel_id)
        ON DELETE SET NULL
) ENGINE=InnoDB;
