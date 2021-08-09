# Project

[project.com](https://project.com)

## Install

### Clone the repository

```shell
git clone https://github.com/jcaughlin/dashboard-app
cd dashboard-app
```

### Check your Ruby version

```shell
ruby -v
```

The project was built with: ruby 3.0.0p0 2020-12-25 revision 95aff21468 arm64-darwin20

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 2.5.1
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
bundle && yarn
```

### Initialize the database

```shell
rails db:create db:migrate db:seed
```

## Serve

```shell
rails s
```

## #TODO

1. Dockerize
2. Create Deployment Environment
3. Admin for to add applications
4. Admin to maintain Users
5. Fix Layout
