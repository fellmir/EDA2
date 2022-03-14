# Trabalho individual II de ADE II

Created By: Fellipe Miranda
Date Created: Nov 11, 2020 7:12 PM
Primeira entrega: Dec 8, 2020
Priority: Medium
Segunda entrega: Dec 9, 2020
Status: Next Up
Tags: ADE

# Descrição

- Reproduzir resultados de um artigo científico
- [https://www.sciencedirect.com/science/article/pii/S0165176519303027](https://www.sciencedirect.com/science/article/pii/S0165176519303027)
- [https://data.mendeley.com/datasets/3t9wshp34p/1](https://data.mendeley.com/datasets/3t9wshp34p/1)
- Desenvolver relatório (curto) sobre o processo
- Desenvolver apresentação (curta) sobre o processo

### Pandoc

- Guia inicial: [https://pandoc.org/getting-started.html](https://pandoc.org/getting-started.html)
- Para o relatório: `pandoc Fellipe_Silva-ADE_II-Trabalho_individual_II.md --bibliography Fellipe_Silva_-_bibtex.bib --output=Fellipe_Silva-ADE_II-Trabalho_individual_II.pdf`
    - Não esquecer o .bibtex!
- Para a apresentação: `pandoc -t beamer Fellipe_Silva-ADE_II-Apresentacao.md -o Fellipe_Silva-ADE_II-Apresentacao.pdf`

### Reprodução dos resultados

- [x]  Achar trabalho a ser reproduzido
- [x]  Ler conclusões
- [x]  Ver tabelas
- [x]  Ver se resultados são reproduzidos via Stata
    - [x]  .do
    - [x]  .dta
- [x]  Anotar resultados da reprodução
- [x]  Anotar problemas da reprodução (se houver)
- [x]  Anotar sugestões de melhora do código
- [x]  Anotar sugestões de extensão do trabalho

### Relatório

- [x]  Escrever relatório em **.md** (ou .stmd)
    - [x]  Info sobre o artigo em si
        - [x]  Principais conclusões do artigo
        - [x]  Método utilizado
    - [x]  Reprodutividade
        - [x]  Foi possível replicar o artigo?
        - [x]  Foi fácil replicar resultados?
        - [x]  Quais foram os principais obstáculos?
        - [x]  Materiais e instruções foram claras?
        - [x]  Documentação é clara?
        - [x]  Código está bem estruturado?
    - [x]  Sugestões de reprodutividade
        - [x]  Sugestões para facilitar o processo?
    - [x]  Importância do artigo e sugestões para o artigo (não para o código!)
        - [x]  Qual a importância dos resultados obtidos?
        - [x]  Quais potenciais extensões da análise?
- [x]  Usar BibTex para construir bibliografia
    - [x]  YAML (aula do dia 25/11/2020)
        - "Cabeçalho" do arquivo
- [x]  Converter para PDF via Pandoc

### Apresentação

- [x]  Criar slides via Beamer (aula do dia 25/11/2020)
    - [x]  YAML
    - [x]  Encontrar tema