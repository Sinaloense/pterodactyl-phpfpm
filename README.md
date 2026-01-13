# pterodactyl-phpfpm
Dockerfile and Egg to run PHP-FPM inside a Pterodactyl server.

This repository provides what is needed to run PHP-FPM as part of a Pterodactyl server.

## ⚠️ This egg is functional, but was created for testing purposes. I recommend using one of the following two eggs instead, as this one will not receive updates:
- https://github.com/Sinaloense/pterodactyl-nginx-phpfpm
- https://github.com/Sinaloense/pteordactyl-laravel-frankenphp

## Repository contents

- Dockerfile — Image with PHP-FPM and required scripts.
- entrypoint.sh — Startup script.
- egg-p-h-p--f-p-m.json — Egg to use in Pterodactyl.
- logrotate.d — Log rotation configuration for PHP-FPM.

## Features

- PHP-FPM integration directly from a Pterodactyl-managed server.
- Automatic Composer installations when starting your server.
- Automatic log rotation.
- Supported PHP versions: 8.3.28, 8.4.15, 8.5.0.

## Requirements

- Pterodactyl installed.
- [Pterodactyl Nginx.](https://github.com/Sinaloense/pterodactyl-nginx)

## Installation

- Upload `egg-p-h-p--f-p-m.json` to your Pterodactyl panel.
- Upload the file  
  [pterodactyl-phpfpm](https://github.com/Sinaloense/pterodactyl-phpfpm/blob/main/logrotate.d/pterodactyl-phpfpm)  
  to the `/etc/logrotate.d/` directory on your main host.

## Edit your Nginx site's `fastcgi_pass` configuration t_
