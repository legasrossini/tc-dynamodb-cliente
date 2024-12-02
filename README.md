# tc-dynamodb-cliente

Um projeto de exemplo para gerenciar um banco de dados DynamoDB com Terraform e GitHub Actions para o curso de Arquitetura de Software na instituição de ensino FIAP.

![AWS DynamoDB](https://img.shields.io/badge/AWS-DynamoDB-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white)

## Descrição

Este projeto configura um banco de dados DynamoDB para um microserviço de clientes. Ele utiliza Terraform para gerenciar a infraestrutura como código e GitHub Actions para automatizar o fluxo de trabalho de desenvolvimento e implantação.

## Estrutura do Projeto

- **infra/**: Contém os arquivos de configuração do Terraform.
- **.github/workflows/**: Contém os arquivos de workflow do GitHub Actions.
- **README.md**: Este arquivo.

## Fluxo de Trabalho

### Branch `develop`

O branch `develop` é utilizado para desenvolvimento contínuo. Todas as mudanças devem ser feitas neste branch e validadas antes de serem mescladas no branch `main`.

#### Workflow de Validação (`create-pr.yml`)

![Workflow](https://img.shields.io/badge/GitHub%20Actions-Workflow%20de%20Validação-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)

1. **Checkout do Repositório**: Faz o checkout do código do repositório.
2. **Configuração do Terraform**: Configura o Terraform.
3. **Inicialização do Terraform**: Inicializa o Terraform.
4. **Validação do Terraform**: Valida a configuração do Terraform.
5. **Busca de Todos os Branches**: Garante que todos os branches estejam atualizados.
6. **Atualização do Branch `develop`**: Garante que o branch `develop` esteja atualizado.
7. **Criação do Pull Request**: Cria um Pull Request para mesclar as mudanças do branch `develop` no branch `main`.

### Branch `main`

O branch `main` é utilizado para a versão estável do código. Todas as mudanças no branch `main` são automaticamente implantadas.

#### Workflow de Implantação (`deploy.yml`)

![Workflow](https://img.shields.io/badge/GitHub%20Actions-Workflow%20de%20Implantação-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)

1. **Checkout do Repositório**: Faz o checkout do código do repositório.
2. **Configuração do Terraform**: Configura o Terraform.
3. **Inicialização do Terraform**: Inicializa o Terraform.
4. **Validação do Terraform**: Valida a configuração do Terraform.
5. **Configuração das Credenciais AWS**: Configura as credenciais AWS.
6. **Exportação de Variáveis de Ambiente**: Exporta as variáveis de ambiente necessárias.
7. **Atualização do Estado do Terraform**: Atualiza o estado do Terraform.
8. **Aplicação do Terraform**: Aplica as mudanças do Terraform.

## Como Usar

1. **Clone o Repositório**:
   ```sh
   git clone https://github.com/legasrossini/tc-dynamodb-cliente.git
   cd tc-dynamodb-cliente