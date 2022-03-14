---
title: Trabalho Individual II
author: Fellipe Silva
date: 08 de dezembro de 2020
output: beamer_presentation
theme: Montpellier
colortheme: beaver
fonttheme: structurebold
fontsize: 14pt
lang: pt-br 
header-includes:
    - \usepackage{setspace}
    - \usepackage{ragged2e}
    - \usepackage{hyperref}
    - \hypersetup{colorlinks=true, linkcolor=brue, urlcolor=blue, }
    - \setbeamertemplace{page number in head/foot}{\insertframenumber}
---

# Informações sobre o artigo

**Artigo reproduzido**: "Voters’ response to in-kind transfers: Quasi-experimental evidence from prescription drug cost-sharing in Brazil"

- *Autores*: M. Christian Lehmman, Hellen Matarazzo

- Publicado em Economic Letters, volume 184, novembro de 2019

- Códigos JEL D72 - Processos Políticos e H72 - Orçamento e Despesas do Estado e do Poder Local

- Palavras-chave: Eleições, Transferências em bens e serviços, Políticas de saúde 

# Informações sobre código e dataset

- Código e dataset disponibilizados no Mendeley Data

- Acesso via login da faculdade

# Objeto, método e espaço temporal da pesquisa

**Objeto de pesquisa**
- Verificar os efeitos das transferências de bens e serviços no resultado eleitoral de municípios brasileiros

**Método**
- Design de regressão descontínua (variáveis instrumentais, *two-stage least squares*)

**Espaço temporal**
- Ciclo eleitoral de 2004 e 2008

# Farmácia Popular no Brasil

**Contexto**
- Brasil tem cerca de 25% da população com hipertensão, e 8% com diabetes
- Farmácia Popular oferece remédios a essas doenças crônicas de forma totalmente gratuita aos cadastrados
- Inclui remédios com 90% de desconto sobre o preço de mercado para outras doenças crônicas, como o Mal de Parkinson
- Programa do governo federal, *mas* com implementação a nível municipal mediante solicitação da prefeitura e "piso" de 70 mil habitantes

# Sobre o método

**Quasi-experimental**
- Estima o efeito causal de uma intervenção em uma população, sem aleatoriedade de escolha

**Intervenção escolhida**
- Implementação do programa Farmácia Popular em 2005

**Regressão descontínua**
- Seleciona observações em torno do limiar populacional, verificando distância entre população da cidade em 2004 e o "piso" mencionado anteriormente e os efeitos sobre o resultado eleitoral em 2008

# Resultados

**Resultados da pesquisa**
- Retorno positivo nos votos de prefeitos em exercício, entre 11% e 17%
- Acima do retorno encontrado em pesquisas prévias sobre efeitos de outros tipos de transferência, de 11%

![.](https://ars.els-cdn.com/content/image/1-s2.0-S0165176519303027-gr2_lrg.jpg)

# Reprodução

**Tentativa com o código original: sem sucesso**
- Incompatibilidade com a versão atualizada do pacote de reprodução dos resultados da tabela
- Nenhuma informação na documentação do código do pacote sobre solução dos potenciais problemas de incompatibilidade
 
 ![.](https://i.ibb.co/51f3W3b/1-s2-0-S0165176519303027-table.png)
 
 # Reprodução
 
**Comando faltante**
- Para reprodução dos gráficos, era necessário a instalação do pacote CMOGRAM
- Processo bem sucedido após verificação e correção do erro

![.](https://ars.els-cdn.com/content/image/1-s2.0-S0165176519303027-gr1_lrg.jpg)

# Reprodução

**Mais problemas**
- Dependência principal do processo não era instalada de forma automática
- Necessário estabelecer o diretório de trabalho onde foi salvo o dataset para que o processo fosse reproduzido
- Sem a criação de uma "árvore" de diretórios para organizar melhor o processo descrito no do-file
- Outputs inteiramente salvos na pasta de trabalho
- Tentativas de "corrigir" o código problemático `rdbwselect_2014` foram mal sucedidas

# Sugestões de reprodutividade

1. capture mkdir para criar "árvore" de diretórios
2. Arquivos .txt para explicar o que cada pasta (e seu conteúdo) signfica
3. "Puxar" dataset de um repositório online
4. Inserir nas linhas de código os comandos necessários para instalação dos pacotes necessários
5. Atualizar código de reprodução da tabela de regressão
6. Manter figuras originais que "montaram" figura 2, para potenciais análises no futuro

# Importância do artigo

- Verificação do efeito das transferências de bens e serviços em resultados eleitorais
- Contribuição metodológica a partir do uso da regressão descontínua
- Contribuição na validação de teorias atuais da Economia Política

# Extensões da pesquisa

- Comparação direta entre transferências monetárias e transferências de bens e serviços
- Verificar efeitos de obras públicas nos resultados eleitorais de bairros em grandes cidades brasileiras
- Testar se existe diferenças de preferência entre tipos de transferência entre pessoas com renda diferente
- Verificar duração do efeito destes programas no sucesso eleitoral dos políticos
