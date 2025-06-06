<h1 align="center">🤖 Projeto de Automação de Testes com multi frameworks</h1>

<p align="center">
  <a href="https://robotframework.org/">
    <img src="https://img.shields.io/badge/Robot%20Framework-grey?style=for-the-badge&logo=robotframework&logoColor=white" alt="Robot Framework"/>
  </a>
  <a href="https://www.cypress.io/">
    <img src="https://img.shields.io/badge/Cypress-009688.svg?style=for-the-badge&logo=cypress&logoColor=white" alt="Cypress"/>
  </a>
  <a href="https://playwright.dev/">
    <img src="https://img.shields.io/badge/Playwright-45ba63.svg?style=for-the-badge&logo=playwright&logoColor=white" alt="Playwright"/>
  </a>
  <a href="https://appium.io/">
    <img src="https://img.shields.io/badge/Appium-472872?style=for-the-badge&logo=appium&logoColor=white" alt="Appium"/>
  </a>
</p>


## 🚧 Status do Projeto

![STATUS](https://img.shields.io/static/v1?label=STATUS&message=EM%20ANDAMENTO&color=FFD700&style=for-the-badge)

## 📌 Visão Geral

Este repositório reúne automações de testes utilizando **Robot Framework**, **Cypress**, **Playwright** e **Appium**. O objetivo é demonstrar, comparar e aplicar boas práticas em diferentes abordagens de testes E2E (end-to-end).

---

## 🧪 Tecnologias Utilizadas

- [Node.js](https://nodejs.org/)
- [Python](https://www.python.org/)
- [Cypress](https://www.cypress.io/)
- [Playwright](https://playwright.dev/)
- [Appium](https://appium.io/)
- [Robot Framework](https://robotframework.org/)

---

## 📋 Pré-requisitos

- [Node.js](https://nodejs.org/)
- [Python](https://www.python.org/)
- [Git](https://git-scm.com/)
- [VS Code](https://code.visualstudio.com/)

---

## 📁 Estrutura do Projeto

```bash
📦 multi-test-framework
│
├── 📁 robot                # Testes com Robot Framework
├── 📁 appium               # Testes com Appium
├── 📁 cypress              # Testes com Cypress
├── 📁 playwright           # Testes com Playwright
├── README.md               # Documento principal
```

## 🚀 Como Rodar os Testes
Este projeto reúne testes automatizados utilizando Robot Framework, Appium, Cypress e Playwright. Abaixo você encontra as instruções para clonar o repositório, instalar dependências e executar os testes de cada tecnologia.

### 📥 1. Clone o repositório
```bash
git clone https://github.com/seu-usuario/multi-test-framework.git
```

### 📦 2. Instale as dependências globais
Certifique-se de ter as seguintes ferramentas instaladas:

- [Node.js](https://nodejs.org/en/download/) – necessários para **Cypress** e **Playwright**
- [Python 3 e pip](https://www.python.org/downloads/) – necessários para **Robot Framework**
- [Java JDK](https://www.oracle.com/java/technologies/javase-downloads.html) e [Android Studio](https://developer.android.com/studio) – necessários para **Appium** (inclui emulador Android)

## ▶️ Como Executar os Testes
### Cypress
```bash
cd cypress
npm install
npx cypress open   # para interface visual
npx cypress run    # para rodar via terminal
```

### Playwright
```bash
cd playwright
npm install
npx playwright install   # instala navegadores
npx playwright test
```

### Robot Framework
```bash
cd robot
pip install -r requirements.txt
robot -d logs tests/
```

### Appium
1. Abra o **Android Studio** e inicie o **emulador Android**.
2. Inicie o servidor Appium:
```bash
npx appium
```
Execute os testes usando Robot Framework:
```bash
robot -d logs tests/
```

## 🤝 Contribuindo
Sinta-se à vontade para explorar as pastas, executar os testes e adaptar o conteúdo conforme suas necessidades. <br>
Sugestões, melhorias e novas ideias de testes são muito bem-vindas!  

## 🧑‍💻 Autora
Desenvolvido com 💡 e ☕ para fins educacionais.  
[Marillia Dantas](https://www.linkedin.com/in/marilliadantas) — QA Engineer