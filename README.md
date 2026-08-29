# Demo DAO com JDBC

> Projeto de acesso a banco de dados relacional em Java puro utilizando JDBC e o padrão de projeto DAO (Data Access Object). Sem frameworks ORM — foco no entendimento do acesso direto ao banco.

[![Java](https://img.shields.io/badge/Java-17+-ED8B00?logo=openjdk&logoColor=white)](https://www.oracle.com/java/technologies/downloads/)
[![MySQL](https://img.shields.io/badge/MySQL-4479A1?logo=mysql&logoColor=white)](https://www.mysql.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

---

## Índice

1. [Visão geral](#visão-geral)
2. [Stack técnica](#stack-técnica)
3. [Arquitetura](#arquitetura)
4. [Como rodar localmente](#como-rodar-localmente)
5. [Conceitos aplicados](#conceitos-aplicados)
6. [Licença](#licença)
7. [Autor](#autor)

---

## Visão geral

Implementação do padrão DAO para abstrair operações de banco de dados usando JDBC. Projeto focado em entender o que acontece "por baixo dos panos" antes de utilizar ferramentas como JPA/Hibernate.

Funcionalidades principais:

- CRUD completo para entidades Seller e Department
- Padrão DAO com interfaces e implementações
- Gerenciamento de conexão com banco de dados
- Tratamento de exceções com `DbException` customizada
- Consultas com joins e mapeamento manual de ResultSet

---

## Stack técnica

| Tecnologia | Uso |
|---|---|
| Java 17+ | Linguagem principal |
| JDBC | Acesso ao banco de dados |
| MySQL | Banco de dados relacional |
| Maven | Gerenciamento de dependências |

---

## Arquitetura

```
src/
└── application/          # Classes de teste e main
└── db/                   # Utilitário de conexão e DbException
└── entities/             # Entidades (Seller, Department)
└── model/
    ├── dao/              # Interfaces DAO
    │   ├── SellerDao.java
    │   └── DepartmentDao.java
    └── impl/             # Implementações JDBC
        ├── SellerDaoJDBC.java
        └── DepartmentDaoJDBC.java
```

---

## Como rodar localmente

### Pré-requisitos

- JDK 17+
- MySQL rodando localmente

### Passos

```bash
git clone https://github.com/EndriwEngSoft/demo-dao-jdbc.git
cd demo-dao-jdbc

# Copie db.properties.example para db.properties e preencha com suas credenciais MySQL
cp db.properties.example db.properties

# Crie o banco executando sql/create_database.sql (disponível no repositório)

# Compile e execute pela IDE (Eclipse/IntelliJ)
# ou via Maven:
mvn compile exec:java -Dexec.mainClass="application.Program"
```

`db.properties` fica de fora do versionamento (veja `db.properties.example` para o formato esperado):

```properties
user=seu_usuario
password=sua_senha
dburl=jdbc:mysql://localhost:3306/coursejdbc
useSSL=false
allowPublicKeyRetrieval=true
```

---

## Conceitos aplicados

- Padrão de projeto **DAO** para separação de responsabilidades
- Gerenciamento manual de `Connection`, `PreparedStatement` e `ResultSet`
- `try-with-resources` para fechamento automático de recursos
- Tratamento de `SQLException` com exceção customizada
- Consultas SQL com `JOIN`, `WHERE` e ordenação

---

## Licença

Distribuído sob a licença MIT. Veja [LICENSE](LICENSE) para o texto completo.

---

## Autor

**Endriw Colvara Bento**  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=flat&logo=linkedin&logoColor=white)](https://linkedin.com/in/endriw-bento)
[![Portfólio](https://img.shields.io/badge/Portf%C3%B3lio-000?style=flat&logo=vercel&logoColor=white)](https://endriwdev.vercel.app/)
