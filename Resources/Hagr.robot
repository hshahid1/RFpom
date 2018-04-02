*** Settings ***
Documentation  Self created keywords

Resource  ../Resources/PO/HomePage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/ProductPage.robot

*** Keywords ***
Open Home Page
    HomePage.Load
    HomePage.Verify Page Loaded

Search a Product
    TopNav.Input and Search

Specify Product Specs
    ProductPage.Select Color
    ProductPage.Open Sizing Guide and explore sizes
    ProductPage.Close Sizing Guide
    ProductPage.Select Waist
    ProductPage.Select Inseam
    ProductPage.Specify Quantity

Add to Bag and Checkout
    ProductPage.Add to Bag
    ProductPage.Proceed to Checkout
