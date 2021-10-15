FROM php:7.4-fpm

# Argumentos para o docker-compose.yaml
ARG user
ARG uid

# Instalação de pacotes do sistema
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Limpando cache para economizar espaço
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Instalando extensões php, composer e definindo permissões do usuário
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN useradd -G www-data,root -u $uid -d /home/$user $user
RUN mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user

# Definindo workdir e usuário
WORKDIR /var/www
USER $user
