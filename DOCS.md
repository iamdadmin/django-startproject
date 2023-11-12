### Introduction

Inertia is a new approach to building classic server-driven web apps. We call it the modern monolith.

Inertia allows you to create fully client-side rendered, single-page apps, without the complexity that comes with modern SPAs. It does this by leveraging existing server-side patterns that you already love.

Inertia has no client-side routing, nor does it require an API. Simply build controllers and page views like you've always done! Inertia works great with any backend framework, but it's fine-tuned for Laravel. This documentation is your author's attempt to build on the official documentation and introduce Django in the same way.

## Not a framework

Inertia isn't a framework, nor is it a replacement for your existing server-side or client-side frameworks. Rather, it's designed to work with them. Think of Inertia as glue that connects the two. Inertia does this via adapters. We currently have three official client-side adapters (React, Vue, and Svelte) and two server-side adapters (Laravel and Rails). We'll be using the (inertia-django)[https://github.com/inertiajs/inertia-django] communityu adapter in this documentation, which is sponsored and maintained by the team at (bellaWatt)[https://bellawatt.com].

### Installation

## Server-side

The first step when installing Inertia is to configure your server-side framework. You can find the community adapter packages (here)[https://pypi.org/project/inertia-django/].

