CREATE TABLE Cliente (
    Codcli INTEGER,
    nome VARCHAR(50),
    idade INTEGER
    PRIMARY KEY (CodCli)
);

CREATE TABLE Produto (
    CodProd INTEGER,
    descricao VARCHAR(180)
);

CREATE TABLE Pedido (
    NumPedido INTEGER,
    CodCli INTEGER,
    ano DATE
    PRIMARY KEY (NumPedido),
    Codcli int FOREIGN KEY REFERENCES Cliente(CodCli)
);

CREATE TABLE ItemPedido (
    NumPedido INTEGER,
    NumItem INTEGER,
    CodProd INTEGER,
    Quant INTEGER,
    PrecoUnit FLOAT,
    PRIMARY KEY (NumPedido,NumItem),
    NumPedido INTEGER FOREIGN KEY REFERENCES Pedido(NumPedido),
    CodProd INTEGER FOREIGN KEY REFERENCES Produto(CodProd) 
);

INSERT INTO Pedido (NumPedido,)
INSERT INTO ItemPedido VALUES (01,02,02,2,)
