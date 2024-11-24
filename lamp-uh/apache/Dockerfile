FROM debian:latest

# Actualización e instalación de dependencias necesarias
RUN apt-get update && apt-get install -y \
    apache2 \
    libapache2-mod-php \
    php \
    php-mysql \
    php-pdo-mysql \
    php-mysqli \
    && a2enmod rewrite \
    && apt-get clean

# Copiar configuración personalizada de Apache
COPY ./apache-config/000-default.conf /etc/apache2/sites-available/000-default.conf

# Exponer el puerto 80 en el contenedor
EXPOSE 80

# Ejecutar Apache en primer plano
CMD ["apachectl", "-D", "FOREGROUND"]
