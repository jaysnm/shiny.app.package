# Building a Prod-Ready, Robust Shiny Application.
# 
# README: each step of the dev files is optional, and you don't have to 
# fill every dev scripts before getting started. 
# 01_start.R should be filled at start. 
# 02_dev.R should be used to keep track of your development during the project.
# 03_deploy.R should be used once you need to deploy your app.
# 
# 
###################################
#### CURRENT FILE: DEV SCRIPT #####
###################################

# Engineering

## Dependencies ----
## Add one line by package you want to add as dependency
usethis::use_package( "config", "Imports" )
usethis::use_package( "golem", "Imports" )
usethis::use_package( "pkgload", "Imports" )
usethis::use_package( "roxygen2", "Imports" )
usethis::use_package( "rstudioapi", "Imports" )
usethis::use_package( "usethis", "Imports" )
usethis::use_package( "devtools", "Imports" )
usethis::use_package( "htmltools", "Imports" )
usethis::use_package( "shiny", "Imports" )
usethis::use_package( "promises", "Imports" )
usethis::use_package( "future", "Imports" )
usethis::use_package( "ggplot2", "Imports" )

## Add modules ----
## Create a module infrastructure in R/
golem::add_module( name = "home" ) # Name of the module
golem::add_module( name = "about" ) # Name of the module


## External resources
## Creates .js and .css files at inst/app/www
golem::add_js_file( "script" )
golem::add_js_handler( "handlers" )
golem::add_css_file( "styles" )

# Documentation

## Vignette ----
usethis::use_vignette("shinypkg")
devtools::build_vignettes()

# You're now set! ----
# go to dev/03_deploy.R
