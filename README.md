# Buona Duona

Este, es el proyecto terminal del bootcamp Rails de Código Facilito.

## Overview
Se trata de un sitio web para el que aún me encuentro implementando el back-end.

En este sitio, se cuenta con una tienda e-commerce de venta de repostería y café en línea.

## Acknowledgments

Agradecimiento a [Brenda Marín](https://github.com/BrendaMarinR) por el diseño y maquetación de las pantallas.

## Getting started

Para ver el sitio en un entorno de producción visite el siguiente [enlace](https://buona-duona-imr.herokuapp.com/).

Para ejecutar el proyecto en una PC, siga los siguientes pasos:

Este proyecto se desarrolló con:
*  Ruby 3.0.1 en Windows con `ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x64-mingw-ucrt]` instalado mediante [RubyInstaller + DevKit](https://rubyinstaller.org/downloads/)
* Rails 7.0.3.1 ( [Instrucciones de intstalación](https://medium.com/@declancronje/installing-and-troubleshooting-ruby-on-rails-sqlite3-windows-10-fix-87c8886d03b) )
* Node.js v16.16 (LTS)
* SQLite 3 (Herramientas de linea de comandos para Windows, descarga directa [aquí](https://sqlite.org/2022/sqlite-tools-win32-x86-3390200.zip) )
  * Instalación de las herramientas de sqlite:
  1. Descargue el archivo ZIP del enlace mostrado arriba
  2. Descomprima el archivo en alguna carpeta de su computadora (por ejemplo C:\ )
  3. Agregue la ruta en donde descomprimió los archivos de SQLite a las variables de entorno
  4. Compruebe que sqlite se puede ejecutar desde CMD / PowerShell:
        ```
        sqlite3 -version
        ```

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

Para visualizar la página de manera local ejecute el siguiente comando:
```
rails s
```

Si todo salió bien, podrá visualizar el sitio en la dirección https://localhost:3000

### Notas
En el archivo seeds.rb (db/seeds.rb) puede encontrar los datos para iniciar sesión en la página (tanto cliente como administrador) ya que, al hacer un registro desde el sitio, siempre será asignado como 'cliente'.

## Roadmap

El sitio, hasta el momento de su publicación, se encuentra apenas con unas cuantas características implementadas tales como:
* Catálogo de productos
* Posibilidad de registrarse como usuario e iniciar sesión en la página
* Acceso restringido a diferentes secciones de la página (autorización)
* Editar productos (Agregar nuevos, eliminar, etc.)

En proceso:
* Panel de control del usuario administrador

Por implementar:
* Editor de banners de promociones
* Carrito de compras y todo lo que implique
* Implementar la carga de imágenes para los productos
