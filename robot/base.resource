*** Settings ***
Library      String
Library      SeleniumLibrary
Library      FakerLibrary    locale=pt_BR
Library      resources/utils/libs/FakerBR.py

#Pages
Resource     resources/pages/login_page.robot
Resource     resources/pages/register_page.robot
Resource     resources/pages/home_page.robot

#Elements
Variables    resources/elements/login_elements.yml
Variables    resources/elements/home_elements.yml
Variables    resources/elements/register_elements.yml

#Utils
Resource     resources/utils/actions.robot
Resource     resources/utils/dataGenerator.robot

#Config
Resource     resources/config/browser.resource
Resource     resources/config/hooks.resource
Resource     resources/config/data.resource