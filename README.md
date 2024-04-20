# Especificações

VollMed

Voll Med é sistema que gerencia os cadastros, atualizaçoes e exclusões de médicos e pacientes, também proporcian o gerenciamento de agendamento e cancelamento de consultas.

# Protótipo 
- Figma https://www.figma.com/proto/N4CgpJqsg7gjbKuDmra3EV/Voll.med?type=design&node-id=2-1008&t=aJNLkNnbICON1ylz-0&scaling=scale-down&page-id=2%3A1007

# Requisitos

## Requisitos funcionais (Médico)
O sistema deve possuir uma funcionalidade de cadastro de médicos, na qual as seguintes informações deverão ser preenchidas:
- Nome
- E-mail
- Telefone
- CRM
- Especialidade (Ortopedia, Cardiologia, Ginecologia ou Dermatologia)
- Endereço completo (logradouro, número, complemento, bairro, cidade, UF e CEP)
- Todas as informações são de preenchimento obrigatório, exceto o número e o complemento do endereço.

O sistema deve possuir uma funcionalidade de listagem de médicos, na qual as seguintes informações, de cada um dos médicos cadastrados, deverão ser exibidas:
- Nome
- E-mail
- CRM
- Especialidade

O sistema deve possuir uma funcionalidade de atualização de dados cadastrais de médicos, na qual as seguintes informações poderão ser atualizadas:
- Nome
- Telefone
- Endereço

O sistema deve possuir uma funcionalidade que permita a exclusão de médicos cadastrados.

## Requisitos funcionais (Paciente)
O sistema deve possuir uma funcionalidade de cadastro de pacientes, na qual as seguintes informações deverão ser preenchidas:
- Nome
- E-mail
- Telefone
- CPF
- Endereço completo (logradouro, número, complemento, bairro, cidade, UF e CEP)
Todas as informações são de preenchimento obrigatório, exceto o número e o complemento do endereço.

O sistema deve possuir uma funcionalidade de listagem de pacientes, na qual as seguintes informações, de cada um dos pacientes cadastrados, deverão ser exibidas:
- Nome
- E-mail
- CPF

O sistema deve possuir uma funcionalidade de atualização de dados cadastrais de pacientes, na qual as seguintes informações poderão ser atualizadas:
- Nome
- Telefone
- Endereço

O sistema deve possuir uma funcionalidade que permita a exclusão de pacientes cadastrados.

## Requisitos funcionais (Agendamento de consultas)
O sistema deve possuir uma funcionalidade que permita o agendamento de consultas, na qual as seguintes informações deverão ser preenchidas:
- Paciente
- Médico
- Data/Hora da consulta

## Requisitos funcionais (Cancelamento de consultas)
O sistema deve possuir uma funcionalidade que permita o cancelamento de consultas, na qual as seguintes informações deverão ser preenchidas:
- Consulta
- Motivo do cancelamento

## Regras de negócio (Médico)

A listagem deve ser ordenada pelo nome do médico, de maneira crescente, bem como ser paginada, trazendo 10 registros por página.

O sistema deve possuir uma funcionalidade que permita a exclusão de médicos cadastrados.

Não permitir a alteração do e-mail do médico;

Não permitir a alteração do CRM do médico;

Não permitir a alteração da Especialidade do médico.

A exclusão não deve apagar os dados do médico, mas torná-lo como "inativo" no sistema.

## Regras de negócio (Paciente)

A listagem deve ser ordenada pelo nome do paciente, de maneira crescente, bem como ser paginada, trazendo 10 registros por página.

Não permitir a alteração do e-mail do paciente;

Não permitir a alteração do CPF do paciente.

A exclusão não deve apagar os dados do paciente, mas torná-lo como "inativo" no sistema.

## Regras de negónocio (Agendamento de consultas)
- O horário de funcionamento da clínica é de segunda a sábado, das 07:00 às 19:00;
- As consultas tem duração fixa de 1 hora;
- As consultas devem ser agendadas com antecedência mínima de 30 minutos;
- Não permitir o agendamento de consultas com pacientes inativos no sistema;
- Não permitir o agendamento de consultas com médicos inativos no sistema;
- Não permitir o agendamento de mais de uma consulta no mesmo dia para um mesmo paciente;
- Não permitir o agendamento de uma consulta com um médico que já possui outra consulta agendada na mesma data/hora;
- A escolha do médico é opcional, sendo que nesse caso o sistema deve escolher aleatoriamente algum médico disponível na data/hora preenchida.

## Regras de negócio (Cancelamento de consultas)
- É obrigatório informar o motivo do cancelamento da consulta, dentre as opções: paciente desistiu, médico cancelou ou outros;
- Uma consulta somente poderá ser cancelada com antecedência mínima de 24 horas.

# Especificações da API

Nessa aplicação vamos utilizar banco de dados relacional (SQL) com integração com JDBC.

# Tecnologias ultilizadas

- Spring Boot
- Java 17
- PostgreSQL/Flyway
- Lombok
- JPA/Hibernate
- Maven
- Postman

# Estrutura do banco (PostgreSQl)
- Table Medicos
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