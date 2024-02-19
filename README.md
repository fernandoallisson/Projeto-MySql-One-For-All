# :construction: Projeto One for All :construction:
Este projeto consiste na criação de um esquema de banco de dados para um serviço de streaming de música semelhante ao Spotify, utilizando tecnologias como Docker, MySQL e SQL para modelagem, criação e consulta de dados.

## Tecnologias Utilizadas:
### Docker: 
Utilizado para facilitar o gerenciamento e a distribuição de contêineres de aplicativos, garantindo que o ambiente de desenvolvimento seja consistente em diferentes máquinas.

### MySQL: 
Sistema de gerenciamento de banco de dados relacional usado para armazenar e gerenciar os dados do serviço de streaming de música.

### SQL: 
Linguagem de consulta estruturada utilizada para definir o esquema do banco de dados, criar tabelas, inserir dados e realizar consultas.

## Esquema do Banco de Dados:
O esquema do banco de dados inclui as seguintes tabelas:

### Planos: 
Armazena informações sobre os planos de assinatura disponíveis para os usuários.

### Clientes: 
Armazena informações sobre os clientes, incluindo nome, idade e o plano de assinatura ao qual estão associados.

### Artistas: 
Contém informações sobre os artistas musicais.

### histórico_planos: 
Registra o histórico de mudanças nos planos de assinatura dos clientes.

### Seguindo_Artistas: 
Registra os artistas seguidos por cada cliente.

### Album: 
Armazena informações sobre os álbuns musicais lançados pelos artistas.

### Musica: 
Contém informações sobre as músicas, incluindo o nome da música, duração e o álbum ao qual pertencem.

### Historico: 
Registra o histórico de reproduções de músicas por cada cliente.

## Desafios:
Além da criação do esquema do banco de dados, o projeto inclui uma série de desafios que envolvem consultas SQL para extrair informações úteis dos dados armazenados além de normalizar a tabela enviada pelo "cliente". Alguns exemplos de desafios incluem:

Contar o número total de músicas, artistas e álbuns na plataforma.
Calcular o total de minutos ouvidos por cada cliente.
Determinar se um cliente está ativo ou inativo com base em sua última reprodução.
Encontrar as duas músicas mais reproduzidas na plataforma.
Calcular métricas de faturamento, como faturamento mínimo, máximo, médio e total.
Identificar os artistas e álbuns mais seguidos pelos clientes.
Encontrar todos os álbuns de um determinado artista.
Estes desafios demonstram a aplicação prática do SQL para extrair insights valiosos dos dados armazenados no banco de dados do serviço de streaming de música.

## Conclusão: 
Este projeto proporciona uma experiência prática de modelagem de banco de dados, criação de tabelas e consultas SQL em um contexto realista de desenvolvimento de aplicativos de streaming de música.

Observação: A pasta "tests" e todos os arquivos que contém dentro dela são de autoria da Trybe