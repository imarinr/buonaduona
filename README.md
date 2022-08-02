# Buona Duona

Este, es el proyecto terminal del bootcamp Rails de Código facilito.

## Overview
Se trata de un sitio web para el que aun me encuentro implementando el back-end.

En este sitio, se cuenta con una tienda e-commerce de venta de repostería y café en línea.

## Acknowledgments

Agradecimiento a [Brenda Marín](https://github.com/BrendaMarinR) por el diseño y maquetación de las pantallas.

## Getting started

Este proyecto se desarrolló con:
*  Ruby 3.0.1 en Windows con `ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x64-mingw-ucrt]` instalado mediante [RubyInstaller + DevKit](https://rubyinstaller.org/downloads/)
* `Rails 7.0.3.1` ( [Instrucciones de intstalación](https://medium.com/@declancronje/installing-and-troubleshooting-ruby-on-rails-sqlite3-windows-10-fix-87c8886d03b) ).
* SQLite 3 ( Herramientas de linea de comandos para Windows, descarga directa [aquí](https://sqlite.org/2022/sqlite-tools-win32-x86-3390200.zip) ).
  * Instalación de las herramientas de sqlite:
  1. Descargue el archivo ZIP del enlace mostrado arriba.
  2. Descomprima el archivo en alguna carpeta de su computadora (por ejemplo C:\ )
  3. Agregue la ruta en donde descomprimió los archivos de SQLite a las variables de entorno.
  4. compruebe que sqlite se puede ejecutar desde CMD / PowerShell:
        ```
        sqlite3 -version
        ```
  5. Node.js v16.16 (LTS)

Para obtener los archivos del repositorio descargue el zip de la rama master desde esta página u obtengalo mediante la herramienta Git con el comando 
```
git clone https://github.com/imarinr/buonaduona.git
```

Una vez descargado el proyecto ejecute:
```
bundle install
rails db:migrate
rails db:seed
```

Para visualizar la pagina de manera local ejecute el siguiente comando:
```
rails s
```

Si todo salio bien, podrá visualizar el sitio en la dirección https://localhost:3000

## Roadmap

El sitio, hasta el momento de su publicación, se encuentra apenas con unas cuantas características implementadas tales como:
* Catálogo de productos
* Posibilidad de registrarse como usuario e iniciar sesión en la página
* Editar productos (Agregar nuevos, eliminar, etc.)

Por implementar:
* Acceso restringido a diferentes secciones de la página (autorización)
* Panel de control del usuario administrador
* Editor de banners de promociones
* Carrito de compras y todo lo que implique
