*** Settings ***
Library      AppiumLibrary

#Base
Resource     resources/config/base.resource
Resource     resources/utils/actions.resource

#Elements
Resource     resources/elements/loginElements.resource
Resource     resources/elements/menuElements.resource
Resource     resources/elements/cartElements.resource
Resource     resources/elements/checkoutElements.resource
Resource     resources/elements/productsElements.resource
Resource     resources/elements/detailsProductsElements.resource

#Variables
Variables    resources/config/variables.py

#Screens
Resource     resources/screen/login_screen.resource  
Resource     resources/screen/menu_screen.resource
Resource     resources/screen/products_screen.resource