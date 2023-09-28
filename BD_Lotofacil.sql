CREATE TABLE Sorteios (
    id serial PRIMARY KEY,
    data_sorteio date NOT NULL,
    numero_concurso integer NOT NULL,
    premio integer,
    arrecadacao_total numeric(15, 2),
    cidade varchar(255),
    uf varchar(2)
);

CREATE TABLE NumerosSorteados (
    id serial PRIMARY KEY,
    sorteio_id integer REFERENCES Sorteios(id),
    bola_1 INT,
    bola_2 INT,
    bola_3 INT,
    bola_4 INT,
    bola_5 INT,
    bola_6 INT,
    bola_7 INT,
    bola_8 INT,
    bola_9 INT,
    bola_10 INT,
    bola_11 INT,
    bola_12 INT,
    bola_13 INT,
    bola_14 INT,
    bola_15 INT,
    numero_sorteado integer NOT NULL,
    CONSTRAINT unique_numeros_sorteados UNIQUE (sorteio_id, numero_sorteado)
);

CREATE TABLE Jogos (
    id serial PRIMARY KEY,
    data_aposta date NOT NULL,
    numeros_apostados integer[] NOT NULL,
    valor_aposta numeric(10, 2) NOT NULL,
    sorteio_id integer REFERENCES Sorteios(id)
);



