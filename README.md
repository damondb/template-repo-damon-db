# Tempalte Repository - DaMoN Workshop Site

This repository uses [cookiecutter](https://cookiecutter.readthedocs.io/en/stable/index.html) to help DaMoN workshop organizers to quickly create a new instance of the workshop website.

Please see the README in the generated folder for further instructions to adapt and publish the website.

## Getting Started

1) Install pipx https://github.com/pypa/pipx
2) Install cookiecutter (`pipx install cookiecutter`) https://github.com/cookiecutter/cookiecutter
3) Run: `cookiecutter gh:damondb/template-damon-db`


## Template Maintenance Checklist

- [ ] Update list of previous workshops in `{{ cookiecutter.project_folder }}/pages/previous_workshops.md` (i.e., add info and link of last year's DaMoN)
- [ ] Update version of dependencies in `{{ cookiecutter.project_folder }}/.github/workflows/hugo.yml` 
- [ ] Update version of dependencies in `{{ cookiecutter.project_folder }}/.devcontainer/devcontainer.json` 
- [ ] Update parameters in `cookiecutter.json` of the template repository for the next year

