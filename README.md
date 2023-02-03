# terraform-cicd-example

This repo is designed to provide a template for deploying terraform infrastructure using CI/CD with github actions.

The repostory is structured in the following way.

* The CI/CD github actions yml file is stored in .github/workflows/
* Any terraform modules can be stored within the modules/ folder
* The src/ folder contains any code required e.g. lambda functions
* The tests/ folder contains unit tests that could be run as part of pre-commit hooks or during the github actions workflow.
* main.tf in the root of the repo is the main deployment template. 
* The pytest.ini file is used the set the pythonpath for the unit tests

### Some considerations:
* This repositroy hasn't factored in the different environments (e.g. dev, testing, production) that you may want to deploy your infrastructued into.  
