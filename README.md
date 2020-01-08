# Introduction

This is a basic ELM program for explaining concept of Messages in ELM:
In this example, a message of type Msg is sent from View (after clicking on the Button) to Update.

 ###  Install ELM

 #### For MacOs

`brew install elm
`

## Usage

### Use **npm**

Steps to build:
1. Run `npm install` to install all necessary dependencies.
2. Run `npm start` to start live server.

### Use **elm**

First install `elm` in global scope.

`npm install -g elm elm-format elm-live`

Then,

To compile separately, run

`elm make src/Main.elm`

To generate an html file use flag --output Main.html

`elm make src/main.elm --output build/Main.html`

Use elm-live to run this file with which you can see changes made to this elm file runtime

`elm-live src/Main.elm`
