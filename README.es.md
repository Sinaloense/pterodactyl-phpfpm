# pterodactyl-phpfpm
Dockerfile y Egg para correr PHP-FPM dentro de un servidor Pterodactyl.

Este repositorio provee lo necesario para correr PHP-FPM como parte de un servidor Pterodactyl.

## ⚠️ Este egg es funcional, pero fue creado para pruebas, te recominedo utilizar alguno de estos 2 egg ya que no recibira actualizaciones:
- https://github.com/Sinaloense/pterodactyl-nginx-phpfpm
- https://github.com/Sinaloense/pteordactyl-laravel-frankenphp

## Contenido del repositorio:

- Dockerfile — Imagen con PHP-FPM y scripts necesarios.
- entrypoint.sh — Script de arranque.
- egg-p-h-p--f-p-m.json — Egg para usar en Pterodactyl.
- logrotate.d — Configuración de rotación de logs para Nginx.

## Características

- Integración de PHP-FPM directamente desde un servidor administrado por Pterodactyl.
- Instalaciones Composer automaticas al momento de iniciar tu servidor.
- Logs rotados automáticamente.
- Versiónes de PHP: 8.3.28, 8.4.15, 8.5.0.

## Requisitos:

- Pterodactyl instalado.
- [Pterodactyl Nginx.](https://github.com/Sinaloense/pterodactyl-nginx)

## Instalación:

- Carga egg-p-h-p--f-p-m.json en tu panel.
- Subir archivo [pterodactyl-phpfpm](https://github.com/Sinaloense/pterodactyl-phpfpm/blob/main/logrotate.d/pterodactyl-phpfpm) en el directorio /etc/logrotate.d/ de tu host principal.

## Editar la configuración fastcgi_pass de tu sitio Nginx por:
    ```
    Si a tu servidor Nginx le asignaste IPV6: fastcgi_pass [fd7a:3c91:b0e4:9f12:6a3d:84c1:2e9b:5f77]:8001;
    Si a tu servidor Nginx le asignaste IPV4: fastcgi_pass 192.168.0.1:8001

    Recomiendo usar IPs locales, puedes crear en tu host principal una cantidad de IPv6 o IPV4 locales, y dentro de Pteordactyl asignarle una IP local a cada usuario,
    ese mismo usuario puedes asignarle sus servicios HTTP con la IP local que le asignaste a el, solo cambias el puerto.
    ```