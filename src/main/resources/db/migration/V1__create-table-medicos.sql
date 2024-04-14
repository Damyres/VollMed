CREATE TABLE medicos (
    ID SERIAL PRIMARY KEY ,
    NOME VARCHAR(100) NOT NULL ,
    EMAIL VARCHAR(100) NOT NULL ,
    CRM VARCHAR(6) NOT NULL  UNIQUE ,
    ESPECIALIDADE VARCHAR(100) NOT NULL,
    LOGRADOURO VARCHAR(100) NOT NULL ,
    BAIRRO VARCHAR(100) NOT NULL ,
    CEP VARCHAR(9) NOT NULL ,
    COMPLEMENTO VARCHAR(100),
    NUMERO VARCHAR(20),
    UF CHAR(2) NOT NULL ,
    CIDADE VARCHAR(100) NOT NULL
)