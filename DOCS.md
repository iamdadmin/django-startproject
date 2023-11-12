# Introduction

Inertia is a new approach to building classic server-driven web apps. We call it the modern monolith.

Inertia allows you to create fully client-side rendered, single-page apps, without the complexity that comes with modern SPAs. It does this by leveraging existing server-side patterns that you already love.

Inertia has no client-side routing, nor does it require an API. Simply build controllers and page views like you've always done! Inertia works great with any backend framework, but it's fine-tuned for Laravel. This documentation is your author's attempt to build on the official documentation and introduce Django in the same way.

## Not a framework

Inertia isn't a framework, nor is it a replacement for your existing server-side or client-side frameworks. Rather, it's designed to work with them. Think of Inertia as glue that connects the two. Inertia does this via adapters. We currently have three official client-side adapters (React, Vue, and Svelte) and two server-side adapters (Laravel and Rails). We'll be using the [inertia-django](https://github.com/inertiajs/inertia-django) community adapter in this documentation, which is sponsored and maintained by the team at [bellaWatt](https://bellawatt.com).

# Starter kits

You're probably in this repository because we're offering a starter kit! You can try it out or read below for manual setup.

# Installation

## Backend

The first step when installing Inertia is to configure your server-side framework. You can find the community adapter package [here](https://pypi.org/project/inertia-django/).

## Install dependencies

You need django of course, the inertia-django community adapter and we're going to be using vite as well. Don't forget to enter your venv.

```shell
$ pip install django inertia-django django-vite
```

## Create a new project

```python
$ mkdir myproject && cd myproject

$ django-admin startproject project .
```

Set up your project however you like.

## Installed apps

Add the Inertia and vite apps to your `INSTALLED_APPS` in `project/settings.py`
```python
INSTALLED_APPS = [
  # django apps,
  'django_vite',
  'inertia',
  'project',
  # your project's other apps,
]
```

## Middleware

Add the Inertia middleware to your `MIDDLEWARE` in `project/settings.py` directly after the django middleware and immediately before any project or other middleware.
```python
MIDDLEWARE = [
  # django middleware,
  'inertia.middleware.InertiaMiddleware',
  # your project's middleware,
]
```

## CSRF

Django's CSRF tokens are tightly coupled with rendering templates so Inertia Django automatically handles adding the CSRF cookie for you to each Inertia response. Because the default names Django uses for the CSRF headers don't match Axios (the Javascript request library Inertia uses), we'll need to either modify Axios's defaults (this won't exist until you've done the frontend setup below) OR Django's settings.

**You only need to choose one of the following options, just pick whichever makes the most sense to you!**

For reference, our quickstart guide makes the change in django as then that keeps most of the configuration together.

In your `entry.js` file
```javascript
axios.defaults.xsrfHeaderName = "X-CSRFToken"
axios.defaults.xsrfCookieName = "csrftoken"
```
OR

In your Django `settings.py` file
```python
CSRF_HEADER_NAME = 'HTTP_X_XSRF_TOKEN'
CSRF_COOKIE_NAME = 'XSRF-TOKEN'
```

## Note if you're using Whitenoise to serve static files

Explanation available here: http://whitenoise.evans.io/en/stable/django.html#WHITENOISE_IMMUTABLE_FILE_TEST

Add the following to the end of your `project/settings.py` file.
```
python
# Vite generates files with 8 hash digits
# http://whitenoise.evans.io/en/stable/django.html#WHITENOISE_IMMUTABLE_FILE_TEST
def immutable_file_test(_, url):
    # Match filename with 12 hex digits before the extension
    # e.g. main.db8f2edc0c8a.js
    return re.match(r"^.+\.[0-9a-f]{8,12}\..+$", url)


WHITENOISE_IMMUTABLE_FILE_TEST = immutable_file_test
```

## Root template

Next, setup the root template that will be loaded on the first page visit to your application. This will be used to load your site assets (CSS and JavaScript), and will also contain a root <div> in which to boot your JavaScript application.

In our case, this goes into your templates/base.html file.

```python


```