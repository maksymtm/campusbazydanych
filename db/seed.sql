USE campus_db;

INSERT INTO nauczyciele (imie, nazwisko, email, tytul) VALUES
('Anna', 'Kowalska', 'anna.kowalska@tm1.edu.pl', 'mgr'),
('Piotr', 'Nowak', 'piotr.nowak@tm1.edu.pl', 'dr'),
('Marta', 'Wiśniewska', 'marta.wisniewska@tm1.edu.pl', 'mgr'),
('Jakub', 'Zieliński', 'jakub.zielinski@tm1.edu.pl', 'prof.'),
('Natalia', 'Pawłowska', 'natalia.pawlowska@tm1.edu.pl', 'mgr');

INSERT INTO klasy (nazwa, wychowawca_id) VALUES
('1A', 1),
('1B', 2),
('1C', 3),
('1D', 4),
('1E', 5);

INSERT INTO przedmioty (nazwa, skrot) VALUES
('Informatyka', 'INF'),
('Matematyka', 'MAT'),
('Język polski', 'POL'),
('Język angielski', 'ANG'),
('Fizyka', 'FIZ'),
('Chemia', 'CHE'),
('Biologia', 'BIO'),
('Historia', 'HIS');

INSERT INTO uczniowie (imie, nazwisko, pesel, klasa_id) VALUES
('Oliwia', 'Sikora', '98010112345', 1),
('Kacper', 'Wójcik', '97020223456', 1),
('Zofia', 'Kowalczyk', '96030334567', 1),
('Michał', 'Lewandowski', '95040445678', 2),
('Lena', 'Dąbrowska', '94050556789', 2),
('Filip', 'Mazur', '93060667890', 2),
('Amelia', 'Jankowska', '92070778901', 3),
('Tomasz', 'Kamiński', '91080889012', 3),
('Nadia', 'Zając', '90090990123', 3),
('Wiktoria', 'Szymańska', '89010101234', 4),
('Bartosz', 'Woźniak', '88020212345', 4),
('Maja', 'Adamczyk', '87030323456', 4),
('Jan', 'Dudek', '86040434567', 5),
('Karolina', 'Pietrzak', '85050545678', 5),
('Dominik', 'Krawczyk', '84060656789', 5);
