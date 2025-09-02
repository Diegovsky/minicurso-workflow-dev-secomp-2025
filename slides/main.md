---
marp: true
paginate: true
class:
    - lead
    - invert
header: UFSJ | Secomp 2025
footer: Minicurso Workflow de Desenvolvimento
style: |
  @font-face {
    font-family: 'Big Noodle Too Oblique';
    src: url('font/bignoodletoooblique.ttf') format('truetype');
    font-weight: normal;
    font-style: normal;
  }

  h1,
  h2,
  h3,
  h4,
  h5 {
    border-bottom: none !important;
  }


  .columns {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 1rem;
  }

  .three-columns {
    display: grid;
    grid-template-columns: 33% 33% 33%;
    gap: 1rem;
  }

  .centered {
    text-align: center;
  }

  .start {
    text-align: left;
  }

  .flex-row {
    display: flex;
  }

  .unequal-columns {
    display: grid;
    grid-template-columns: auto auto auto;
    gap: 1rem;
  }

  .column-23-start {
    grid-column: 1 / 3;
  }

  .column-13-end {
    grid-column: 3 / 3;
  }


  .column-13-start {
    grid-column: 1 / 2;
  }

  .column-23-end {
    grid-column: 2 / 3;
  }

  .column-34 {
    grid-column: 1 / 4;
  }

  .column-14 {
    grid-column: 4 / 4;
  }

  section.title h1 {
    font-size: 120px;
    line-height: 120px;
    font-family: 'Big Noodle Too Oblique';
    color: white;
    background-color: #1E63EE;
    padding: initial;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
  }

  section.small h1 {
    font-size: 80px;
    line-height: 80px;
  }

  section.tiny h1 {
    font-size: 60px;
    line-height: 60px;
  }

  section.attention h1 {
    background-color: #EE1E63 !important;
  }

  .warning {
    background-color: red;
  }

  blockquote {
    border: none !important;
    border-left: none !important;
  }

  .list-right {
    /* text-align: right; */
  }

  .list-right ::marker {
    content: "←    "
  }

  .fixed-list {
    line-height: 50px;
  }

  section li+li {
    margin-top: 0 !important;
  }

  section.figure-background figure {
    background-color: #010713 !important;
  }

  div.small {
    font-size: 20px;
    line-height: 0.5;
  }

  section.end {
    background-color: black;
  }

  section.end p {
    color: white;
  }
---

<!-- _header: '' -->
<!-- _footer: '' -->
<!-- _paginate: false -->

# Workflow de desenvolvimento: principais comandos Git e Shell
## SECOMP 2025
### Diego Augusto

- ![width:30px](./img/github-logo.png) [Diegovsky](https://github.com/Diegovsky)
- ![width:30px](./img/mastodon-logo.svg) [@diegovsky@fosstodon.org](https://fosstodon.org/@diegovsky)

![bg right vertical 50%](./img/secomp-2025.png)
![bg right vertical 30%](./img/ufsj.png)

---

# 0. Sobre Mim

<!-- Se ninguém rir de nada é isso aí mozão -->

![bg right:30%](./img/eu.png)

Aluno de Ciência da Computação na UFSJ, 7º período

Trabalho na Codara como Desenvolvedor Backend

Sou técnico em informática pelo CEFET-MG

Fiquei esse Sábado das 8-14h configurando os pcs pra secomp (vide eu sábado ->)

Gosto demais de computação e de coisas extremamentes específicas

Copiei os slides do Minicurso de Docker

---

<!-- _class: lead invert -->

<div class="centered">

# Links!
TODO: Inserir links depois

<div class="columns">

link dos slides

repo dos slides

</div>
</div>

---

<!-- _class: title lead invert -->
# 1. O que é Git?

![bg right:30%](./img/git.svg)

Git é uma ferramenta de controle de código-fonte (*source-control management*, ou SCM), originalmente criada pelo Linus Torvalds, criador do Freax.

Atualmente, é a mais utilizada para projetos de desenvolvimento por permitir que várias pessoas trabalhem no código em paralelo, sem interferências.


---
# 1.1 O que é o GitHub?


O GitHub é o que chamamos de **Git Forge**.

Um Git Forge facilita o uso do Git por um navegador, pois a única forma de interagir com um **repositório** é pela linha de comando.

Um Git Forge também oferece funcionalidades além do Git, como *Issues*, *Pull Requests*, CI/CD, Releases, etc.

Outros exemplos de Git Forge são: GitLab, Gitea e Forgejo.

---
# 1.2 O que é um repositório?
![bg fit left](./img/riff.png)

Um repositório é a pasta do seu projeto. 

No GitHub, os repositórios são identificados pelo usuário e o nome do projeto:

`<nome>/<projeto>`

Repositórios possuem várias **branches**, sendo uma a principal (master).

---
# 1.3 O que são branches?

![bg fit right:35%](./img/git-branch.svg)

Uma *Branch* (bifurcação) é um histórico de mudanças no código, ou **commits**. 

É possível criar uma branch nova a partir de uma já existente. Esse processo se chama **fork**.

Também é possível juntar duas branches já existentes. Esse processo se chama **merge**.

O relevante para esse mini-curso é um tipo específico de **merge**, o **rebase**.

---

<!-- _class: 'lead invert title' -->
# 1.99 Exercício!


1. Acessem suas contas do GitHub: https://github.com

2. Formem grupos de 2-3 integrantes, escolha um para ser o líder!

3. Líderes: criem um repositório: https://github.com/new

4. Adicionem os outros integrantes (próxima página)
---
<!-- _header: '' -->
<!-- _footer: '' -->

![bg fit](./img/add-user.svg)

---


