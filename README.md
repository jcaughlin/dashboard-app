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

1. Create action for user to customer dashboard.
2. Make Tiles Draggable.
3. Fix height issue with cards on dashboard.
4. Figure out how to compile scss.
5. Improve layout.
6. Dockerize.
7. Create Deployment Environment.
8. Admin for to add applications.
9. Admin to maintain Users.
