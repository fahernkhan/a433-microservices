# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan bahwa working directory untuk container adalah /app
WORKDIR /app

# Menyalin seluruh source code ke working directory di container
COPY . .

# Menentukan agar aplikasi berjalan dalam production mode 
ENV NODE_ENV=production
# dan menggunakan container bernama item-dbsebagai database host
ENV DB_HOST=item-db

# Instal dependencies untuk produksi dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port yang digunakan oleh aplikasi
EXPOSE 8080

# Saat container diluncurkan, jalankan server dengan perintah npm start
CMD ["npm", "start"]