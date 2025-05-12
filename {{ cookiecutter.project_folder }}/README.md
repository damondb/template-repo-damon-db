# DaMoN {{ cookiecutter.workshop_year }} workshop site

## Development Environment

To test changes before pushing them to github, you have to set up a local development environment as described below:

### 1) Using Nix

Use the provided Nix flake by running `nix develop` to set up all required dependencies.

### 2) Using Docker

Use the included devcontainer in VSCode.

Note: Sometimes you  need to run `npm install` manually from within the container. This is the case when the `postCreateCommand` did not execute correctly.

### 3) Local Development
Install the required dependencies:
- hugo (extended) version: see https://gohugo.io/installation/ 
- dart-sass: see https://gohugo.io/functions/css/sass/#installing-in-a-development-environment or use `yay dart-sass`
- postCSS: run `npm install` (requires nodejs to be installed)

## Development Setup

To push changes as the `damondb` user, configure the git repository as follows:

You might need to run `git init` first.

```
git config user.email "damondb2005@gmail.com"
git config user.name "damondb"
# Adjust the key for damondb user
git config core.sshCommand 'ssh -i ~/.ssh/damondb2005_id_ed25519'
eval "$(ssh-agent -s)"
```

Note: First configure github pages (See [Publishing](#publishing))


## Maintenance Checklist

- [ ] Update list of previous workshops in `pages/previous_workshops.md` (i.e., add info and link of last year's DaMoN)
- [ ] See the documentation of the [hugo-damon-db](https://github.com/damondb/hugo-damon-db) theme to learn about the available options/parameters and shortcodes.
- [ ] Complete the checklist of the template repository (i.e. http://github.com/damondb/template-repo-damon-db)

## Publishing

1) Create a `public` GitHub repository under the `damon-db` organization (i.e. https://github.com/orgs/damon-db/repositories). The name of the repository is the year of the workshop, e.g., `2026` and the description should be `Website for the DaMoN 2026 workshop`.
2) Configure GitHub Pages under `Settings/Pages` (https://github.com/damon-db/{{ cookiecutter.workshop_year }}/settings/pages):
    - Source: GitHub Actions
3) Configure the domain under `Settings/Pages`:
    - Custom domain: Remove the domain name from the old DaMoN repository and configure it in the new one
    - Configure subdomain (`www.`): See https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site#configuring-a-subdomain
