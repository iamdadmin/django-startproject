<h1 align="center">Welcome to django-startproject 👋</h1>
<p>
  <a href="https://twitter.com/webology" target="_blank">
    <img alt="Twitter: webology" src="https://img.shields.io/twitter/follow/webology.svg?style=social" />
  </a>
  <a href="https://github.com/jefftriplett/django-startproject/actions" target="_blank">
    <img alt="CI" src="https://github.com/jefftriplett/django-startproject/workflows/CI/badge.svg" />
  </a>
</p>

> Django startproject template with batteries

## :triangular_flag_on_post: Features

- Django 4.2.x
- django-click
- Docker
- Docker Compose
- environs[django]
- psycopg2-binary
- whitenoise
- inertia-django, django-vite
- django-allauth (local only, but add your own additional providers)

### :green_heart: CI

- django-test-plus
- model-bakery
- pre-commit
- pytest
- pytest-cov
- pytest-django

### 🏠 [Homepage](https://github.com/iamdadmin/django-startproject)

## :wrench: Get Started

# Step 0: Install Django and Python

Note: This assumes you've already installed Django>=4.2.7 and Python>=3.10 on your machine or in your venv and have activated it.

If you have not, you can install it with the following command (Ubuntu or Debian):

```shell
$ wget -O https://github.com/iamdadmin/django-startproject/blob/main/venv-build.sh && chmod +x venv-build.sh && ./venv-build.sh

$ source .venv/bin/activate

$ pip install django>=4.2.7
```

# Step 1: Create a new project using this Quickstart

By convention, we recommend naming your project 'project' or 'config' - see [here](https://forum.djangoproject.com/t/project-naming-conventions/339/6) for more details.

We are going to use project in this example, but you can use any name you want.

```shell
$ mkdir mysite && cd mysite

$ django-admin startproject \
    --extension=ini,py,toml,yaml,yml \
    --template=https://github.com/iamdadmin/django-startproject/archive/main.zip \
    project .
```

# Step n: Docker Build

Note this is assuming compose v2 as a plugin, you'll need to adjust the command to 'docker-compose' if you haven't set up this way.

```shell
# Build web docker
$ docker compose build

# Run Migrations
$ docker compose run --rm web python manage.py migrate

# Create a Superuser in Django
$ docker compose run --rm web python manage.py createsuperuser

# Run Django on http://localhost:8000/
$ docker compose up

# Run Django in background mode
$ docker compose up -d

# Stop all running containers
$ docker compose down

# Run Tests
$ docker compose run --rm web pytest

# Re-build PIP requirements
$ docker compose run --rm web pip-compile requirements/requirements.in
```

## :wrench: C


## This is a fork of [django-startproject](https://github.com/jefftriplett/django-startproject) by [Jeff Triplett](https://github.com/jefftriplett)

👤 **Jeff Triplett**

* Website: https://jefftriplett.com
* Twitter: [@webology](https://twitter.com/webology)
* Github: [@jefftriplett](https://github.com/jefftriplett)

If my fork isn't useful for you, consider using or making your own fork of Jeff's project and leave a star if it helped you.

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://github.com/iamdadmindjango-startproject/issues).

