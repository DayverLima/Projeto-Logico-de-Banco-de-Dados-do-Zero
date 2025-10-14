# Projeto Lógico de Banco de Dados do Zero

## 🛠 Sistema de Gestão de Oficina Mecânica – Banco de Dados
✅ 1. Objetivo do Projeto

Desenvolver um banco de dados relacional completo para uma oficina mecânica, permitindo o gerenciamento eficiente de:

* Clientes
* Veículos
* Equipes de trabalho
* Mecânicos e suas especialidades
* Peças e serviços
* Ordens de serviço (OS)
* Custos, status e data das OS

🗂 2. Principais Funcionalidades

✔ Cadastro de clientes e veículos

✔ Registro de ordens de serviço com status e valores

✔ Associação de peças e serviços às ordens

✔ Atribuição de equipes e mecânicos

✔ Cálculo de totais e produtividade

✔ Consultas de negócio para análise e BI

🧱 3. Modelagem do Banco (Entidades)

* cliente
* veículo
* equipe
* mecanico
* mecanico_da_equipe
* ordem_de_serviço
* peça_base
* os_peça_base
* serviço_base
* os_serviço_base
Todos os relacionamentos foram criados com chaves primárias e estrangeiras, garantindo integridade referencial.

🧪 4. População do Banco (Dados Fictícios Reais)

Foram inseridos 20+ registros por tabela, garantindo volume suficiente para:

* Testar consultas SQL
* Simular cenários reais da oficina

🔧 5. Tecnologias Utilizadas

* MySQL
* SQL (DDL, DML, JOINs, GROUP BY, HAVING, etc.)
* Modelagem Relacional (DER/ER)
* Chaves primárias e estrangeiras
* Dados normalizados

▶ 6. Como Executar o Projeto

* Copie o script de criação das tabelas (DDL)
* Execute em um banco MySQL
* Insira os dados fictícios (INSERTs)
* Rode as consultas de análise (SELECTs)
