# Menggunakan image dasar Nginx
FROM nginx:alpine

# Salin file HTML ke direktori yang digunakan oleh Nginx
COPY hello.html /usr/share/nginx/html/

# Expose port 3000 untuk mengakses server web
EXPOSE 3000

# Mengubah konfigurasi default Nginx untuk menggunakan port 3000
RUN sed -i 's/80/3000/g' /etc/nginx/conf.d/default.conf

# Jalankan Nginx di foreground
CMD ["nginx", "-g", "daemon off;"]
