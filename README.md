# Eng_dados_PotatoCore
Nesta documentação, vou detalhar o processo que segui para criar um pipeline automatizado de Extração, Transformação e Carregamento (ETL) de dados da Lotofácil para a PotatoCore, como parte do meu desafio para me tornar um engenheiro de dados júnior.

# Entendimento do Jogo Loto Fácil

_Escolha de Números_ - Em um volante da Lotofácil, há um total de 25 números disponíveis, numerados de 01 a 25. O jogador deve escolher de 15 a 20 números entre esses 25.  
_Apostas_ - Você pode fazer uma aposta simples selecionando 15 números, mas também pode aumentar suas chances de ganhar fazendo uma aposta com mais números, até o limite de 20.  
_Probabilidades_ - As chances de ganhar na Lotofácil variam de acordo com a quantidade de números selecionados. Quanto mais números você escolher, maiores serão as chances de acertar, mas o custo da aposta também será mais alto.

## Visão Geral

O projeto consiste em um pipeline automatizado que realiza as seguintes etapas:

1. **Extração de Dados**: Os dados da Lotofácil são extraídos de uma planilha Excel fornecida.
2. **Limpeza e Transformação**: Os dados extraídos são limpos e transformados para garantir consistência e prepará-los para análise.
3. **Modelagem de Dados**: É criado um esquema de banco de dados para armazenar os dados transformados.
4. **Integração com o Banco de Dados**: Os dados são carregados no banco de dados da PotatoCore.

## Aqui estão os detalhes do processo que segui para atingir os objetivos definidos:

### Extração de Dados
Para extrair os dados da Lotofácil da planilha Excel fornecida, desenvolvi um script em Python utilizando a biblioteca openpyxl. O script realiza o seguinte:

- Abre a planilha Excel (Lotofacil.xlsx) fornecida.
- Identifica a folha de cálculo relevante na planilha.
- Extrai os dados necessários, como números sorteados, datas e outros campos relevantes.

### Limpeza e Transformação
Para limpar e transformar os dados extraídos, criei um conjunto de transformações em Python utilizando a biblioteca pandas. O processo incluiu as seguintes etapas:

- Remoção de duplicatas e registros inválidos.
- Padronização de formatos, garantindo que datas, números e outros campos sigam um formato consistente.
- Tratamento de valores nulos ou ausentes, preenchendo-os quando apropriado.
- Identificação de tendências ou padrões nos números sorteados, gerando métricas relevantes

### Modelagem de Dados
Para armazenar os dados transformados, criei um esquema de banco de dados que incluiu a definição de tabelas, relacionamentos entre elas, índices e chaves primárias/estrangeiras. A estrutura do banco de dados foi projetada para acomodar os dados da Lotofácil de forma organizada e eficiente.

### Integração com o Banco de Dados
Para estabelecer a integração com o banco de dados da PotatoCore, criei um script em Python que:

- Estabelece uma conexão com o banco de dados usando a biblioteca apropriada (por exemplo, SQLAlchemy para bancos de dados SQL).
- Carrega os dados transformados no banco de dados, garantindo que o esquema da tabela corresponda à estrutura dos dados da Lotofácil.

## Tecnologias Utilizadas
Linguagem de programação: Python
Bibliotecas: pandas, requests, seaborn, matplotlib e psycopg2

# Conclusão
Este projeto representou um desafio gratificante para se tornar um engenheiro de dados júnior na DNC. 
Agora, temos um pipeline de ETL automatizado que permite à equipe da PotatoCore acessar facilmente os dados da Lotofácil para análise, economizando tempo e eliminando erros manuais.

Para mais informações, detalhes técnicos ou perguntas, sinta-se à vontade para consultar o repositório GitHub ou entrar em contato comigo por meio das informações de contato fornecidas no repositório
