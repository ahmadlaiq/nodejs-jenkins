# Menggunakan Node.js versi 16.13.1 sebagai base image
FROM node:20.13.1

# Menentukan direktori kerja di dalam container
WORKDIR /usr/src/app

# Menyalin file package.json dan package-lock.json ke dalam direktori kerja
COPY package*.json ./

# Menginstal dependensi yang ada di package.json
RUN npm install

# Menyalin semua file sumber aplikasi ke dalam direktori kerja
COPY . .

# Mengekspos port 8080 untuk mengakses aplikasi
EXPOSE 8080

# Menjalankan aplikasi menggunakan Node.js
CMD [ "node", "index.js" ]
