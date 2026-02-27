# 🗄️ Demo DAO com JDBC

Projeto de acesso a banco de dados relacional em Java puro utilizando JDBC e o padrão de projeto DAO (Data Access Object). Sem frameworks ORM — foco no entendimento do acesso direto ao banco.

## 📌 Sobre o Projeto

Implementação do padrão DAO para abstrair operações de banco de dados usando JDBC. Projeto focado em entender o que acontece "por baixo dos panos" antes de utilizar ferramentas como JPA/Hibernate.

## ✨ Funcionalidades

- CRUD completo para entidades Seller e Department
- Padrão DAO com interfaces e implementações
- Gerenciamento de conexão com banco de dados
- Tratamento de exceções com `DbException` customizada
- Consultas com joins e mapeamento manual de ResultSet

## 🛠️ Tecnologias

| Tecnologia | Uso |
|---|---|
| Java 17+ | Linguagem principal |
| JDBC | Acesso ao banco de dados |
| MySQL | Banco de dados relacional |
| Maven | Gerenciamento de dependências |

## 🏗️ Estrutura

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

## ⚙️ Configuração

Crie o arquivo `db.properties` na raiz do projeto:

```properties
user=seu_usuario
password=sua_senha
dburl=jdbc:mysql://localhost:3306/coursejdbc
useSSL=false
allowPublicKeyRetrieval=true
```

Crie o banco executando o script SQL disponível no repositório.

## ▶️ Como Executar

```bash
# Clone o repositório
git clone https://github.com/EndriwEngSoft/demo-dao-jdbc.git

# Configure o db.properties com suas credenciais MySQL

# Compile e execute pela IDE (Eclipse/IntelliJ)
# ou via Maven:
mvn compile exec:java -Dexec.mainClass="application.Program"
```

## 🧠 Conceitos Aplicados

- Padrão de projeto **DAO** para separação de responsabilidades
- Gerenciamento manual de `Connection`, `PreparedStatement` e `ResultSet`
- `try-with-resources` para fechamento automático de recursos
- Tratamento de `SQLException` com exceção customizada
- Consultas SQL com `JOIN`, `WHERE` e ordenação

## 👨‍💻 Autor

**Endriw Colvara Bento**  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=flat&logo=linkedin&logoColor=white)](https://linkedin.com/in/endriw-bento)
[![Portfólio](https://img.shields.io/badge/Portf%C3%B3lio-000?style=flat&logo=vercel&logoColor=white)](https://portfolio-endriw.vercel.app)
