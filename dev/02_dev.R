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
usethis::use_package( "shiny", "Imports" )

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