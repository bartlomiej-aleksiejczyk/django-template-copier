# Django Simple Project Template

## Overview

This app was created using django simple project template

## Template Content

This template includes:

- Django
- PostgreSQL
- Docker Compose integration
- Working Auth without registration
- Fail2Ban integration
- Precoinfigured templates and static files
- Huey configured as message queue

## How to run

**Local development version:**

```
docker-compose -f custom-compose-dev.yml up -d
```

**Production version:**

```
docker-compose -f docker-compose-prod.yml up -d
```

## Command Passthrough

```
docker compose exec django <your-command-content>
```

examples:

```
docker compose exec django pip freeze > requirements.txt
```
