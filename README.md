# education-pero

Практика CI/CD с GitHub Actions.

## Что внутри

| Workflow | Что делает |
|----------|-----------|
| `CI` | lint → tests → Telegram |
| `Scheduled Ping` | cron каждые 15 мин, проверка доступности |
| `PR Review` | автокомментарий в PR с результатами |
| `Docker Build & Push` | сборка образа → push в ghcr.io |

## Запуск через Docker

```bash
docker pull ghcr.io/zephyr-m/education-pero:latest
docker run -p 3000:3000 ghcr.io/zephyr-m/education-pero:latest
```

## Локально

```bash
npm install
npm test
npm run lint
node src/server.js
```
