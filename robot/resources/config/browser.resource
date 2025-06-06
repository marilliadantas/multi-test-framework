*** Settings ***
Resource       hooks.resource

*** Variables ***
&{config}
...                      Browser=chrome
...                      Headless=add_argument("--headless")
${URL}                   https://e2eburguer.netlify.app/
${REGISTER}              /signup