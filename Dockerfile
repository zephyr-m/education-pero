# Базовый образ — легковесный Node
FROM node:20-alpine

# Рабочая директория внутри контейнера
WORKDIR /app

# Сначала копируем package.json — для кэша слоёв
COPY package*.json ./
RUN npm install --production

# Потом код
COPY src/ ./src/

# Порт
EXPOSE 3000

# Запуск
CMD ["node", "src/server.js"]
