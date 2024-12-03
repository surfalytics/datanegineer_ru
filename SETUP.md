# SETUP.md

## Установка окружения разработки

Для установки окружения разработки вам понадобится Docker.

### Шаг 0: Установка Docker

Скачайте и установите Docker Desktop для вашей операционной системы:

[Docker Desktop](https://www.docker.com/products/docker-desktop/)

### Шаг 1: Клонирование репозитория

Сначала клонируйте репозиторий:

```bash
git clone git@github.com:surfalytics/dataengineer_ru.git
cd dataengineer_ru
```

### Шаг 2: Запуск Docker контейнеров

Для запуска Docker контейнеров используйте команды из Makefile.

#### Запуск контейнеров

```bash
make up
```

Эта команда выполнит `docker-compose -f docker-compose.dev.yml up -d --build`, что запустит контейнеры в фоновом режиме и соберет их при необходимости.

#### Просмотр в браузере

После запуска контейнеров вы можете открыть в браузере URL сайта для просмотра:

[http://localhost:4000](http://localhost:4000)

#### Остановка контейнеров

```bash
make down
```

Эта команда выполнит `docker-compose -f docker-compose.dev.yml down`, что остановит и удалит контейнеры.

#### Перезапуск контейнеров

```bash
make re-up
```

Эта команда сначала остановит контейнеры, а затем запустит их снова.

#### Вход в контейнер

```bash
make exec
```

Эта команда выполнит `docker-compose -f docker-compose.dev.yml exec app bash`, что позволит вам войти в контейнер app и работать в его окружении.

### Шаг 3: Дополнительные команды Docker

Вы также можете использовать команды Docker напрямую, если это необходимо.

#### Запуск контейнеров

```bash
docker-compose -f docker-compose.dev.yml up -d --build
```

#### Остановка контейнеров

```bash
docker-compose -f docker-compose.dev.yml down
```

#### Вход в контейнер

```bash
docker-compose -f docker-compose.dev.yml exec app bash
```
