# <h1 align="center">Projeto com Appium e Robot Framework</h1>

Este é um guia para começar um projeto Node utilizando Appium para automação de testes mobile e Robot Framework para escrever casos de teste.

## 👨‍💻 Tecnologias

Você vai precisar das seguintes ferramentas e tecnologias:

- 🐍 [Python](https://www.python.org/downloads/)
- 🟢 [Node.js](https://nodejs.org/en/)
- ☕ [Java JDK8](http://www.oracle.com/technetwork/pt/java/javase/downloads/jdk8-downloads-2133151.html)
- 📱 [Android Studio](https://developer.android.com/studio/index.html?hl=pt-br)
- 📱 [Appium](http://appium.io/downloads.html)
- 🤖 [Robot Framework](https://robotframework.org/)

## 💻 Ferramentas

Você pode baixar e instalar o JDK 8 através [desse link](http://www.oracle.com/technetwork/pt/java/javase/downloads/jdk8-downloads-2133151.html).

Android Studio é a IDE oficial para desenvolvimento e testes de aplicativos para Android
Você pode baixar a ultima através [desse link](https://developer.android.com/studio/index.html?hl=pt-br)

## Iniciando o Projeto Node

Para iniciar um projeto Node, utilize o seguinte comando:

```bash
npm init
```

## Instalando Appium no Projeto

Para instalar o Appium no projeto, execute o seguinte comando:

```bash
npm i appium@2.0.1
```

## Instalando o Driver

Em seguida, instale o driver necessário com o seguinte comando:

```bash
npx appium driver install uiautomator2
```

## Iniciando o Servidor Appium

Para iniciar o servidor Appium, utilize o seguinte comando:

```bash
npx appium
```

## Instalando Robot Framework

Para instalar o Robot Framework, execute o seguinte comando:

```bash
pip install robotframework
```

## Instalando a Biblioteca Appium para Robot Framework

Por fim, instale a biblioteca Appium para o Robot Framework com o seguinte comando:

```bash
pip install --upgrade robotframework-appiumlibrary
```

Agora o seu ambiente está configurado e pronto para começar a desenvolver e automatizar testes com Appium e Robot Framework.

## Executando Testes

Para executar os testes, utilize o seguinte comando:

```bash
robot -d ./logs/ tests/login.robot
```

## Executando Testes com uso de tag
Para executar os testes com uso de tag, utilize o seguinte comando:

```bash
robot -d ./logs -i SuccessfulLogin tests/login.robot
```