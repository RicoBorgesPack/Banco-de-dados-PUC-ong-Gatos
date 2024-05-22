CREATE TABLE doadores (
    ID INT NOT NULL IDENTITY(1,1),
    CPF NVARCHAR(14) NOT NULL,
    Nome NVARCHAR(50) NOT NULL,
    Email NVARCHAR(50) NOT NULL,
    Endereco NVARCHAR(100) NOT NULL,
    Telefone NVARCHAR(20) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE Doacao (
    ID INT NOT NULL IDENTITY(1,1),
    ID_Doador INT NOT NULL,
    Data_Doacao DATE NOT NULL,
    Valor_Doacao MONEY NOT NULL,
    Descricao TEXT,
    PRIMARY KEY (ID),
    FOREIGN KEY (ID_Doador) REFERENCES doadores(ID)
);

CREATE TABLE gatos (
    ID INT NOT NULL IDENTITY(1,1),
    Genero NVARCHAR(10) NOT NULL,
    Nome NVARCHAR(50) NOT NULL,
    Raça NVARCHAR(50) NOT NULL,
    Idade INT NOT NULL,
    Data_Entrada DATE NOT NULL,
    Data_Saida DATE,
    Status NVARCHAR(50),
    Descricao TEXT,
    PRIMARY KEY (ID)
);

CREATE TABLE adotantes (
    ID INT NOT NULL IDENTITY(1,1),
    Nome NVARCHAR(50) NOT NULL,
    ID_Gato INT NOT NULL,
    CPF NVARCHAR(14) NOT NULL,
    Data_Adocao DATE NOT NULL,
    Email NVARCHAR(50) NOT NULL,
    Endereco NVARCHAR(100) NOT NULL,
    Status_Adocao NVARCHAR(50),
    PRIMARY KEY (ID),
    FOREIGN KEY (ID_Gato) REFERENCES gatos(ID)
);

CREATE TABLE voluntarios (
    ID INT NOT NULL IDENTITY(1,1),
    Data_Inicio DATE NOT NULL,
    Data_Termino DATE,
    Endereco NVARCHAR(100) NOT NULL,
    CPF NVARCHAR(14) NOT NULL,
    Nome NVARCHAR(50) NOT NULL,
    Telefone NVARCHAR(20) NOT NULL,
    Disponibilidade NVARCHAR(50) NOT NULL,
    Area_Interesse TEXT,
    ID_Gato INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (ID_Gato) REFERENCES gatos(ID)
);
