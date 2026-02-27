DROP TABLE IF EXISTS Catalogo;
DROP TABLE IF EXISTS Pezzi;
DROP TABLE IF EXISTS Fornitori;

CREATE TABLE Fornitori (
    fid TEXT PRIMARY KEY,
    fnome TEXT NOT NULL,
    indirizzo TEXT NOT NULL
);

CREATE TABLE Pezzi (
    pid TEXT PRIMARY KEY,
    pnome TEXT NOT NULL,
    colore TEXT NOT NULL
);

CREATE TABLE Catalogo (
    fid TEXT NOT NULL,
    pid TEXT NOT NULL,
    costo REAL NOT NULL,
    PRIMARY KEY (fid, pid),
    FOREIGN KEY (fid) REFERENCES Fornitori(fid),
    FOREIGN KEY (pid) REFERENCES Pezzi(pid)
);

INSERT INTO Fornitori (fid, fnome, indirizzo) VALUES
('F1', 'Acme', 'Via Roma 1'),
('F2', 'Beta', 'Via Milano 2'),
('F3', 'Gamma', 'Via Torino 3'),
('F4', 'Delta', 'Via Napoli 4');

INSERT INTO Pezzi (pid, pnome, colore) VALUES
('P1', 'Bullone', 'rosso'),
('P2', 'Vite', 'verde'),
('P3', 'Dado', 'rosso'),
('P4', 'Rondella', 'blu'),
('P5', 'Cuscinetto', 'verde');

INSERT INTO Catalogo (fid, pid, costo) VALUES
('F1', 'P1', 10.0),
('F1', 'P2', 20.0),
('F1', 'P3', 25.0),
('F1', 'P4', 15.0),
('F2', 'P1', 8.0),
('F2', 'P2', 22.0),
('F2', 'P5', 30.0),
('F3', 'P3', 27.0),
('F3', 'P4', 14.0),
('F4', 'P1', 12.0),
('F4', 'P3', 18.0);
