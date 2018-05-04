Métodos Numéricos
=================

En este repositorio, se encuentran los métodos estudiados en clase programados en python.
Para correr los métodos es necesario tener el instalado el lenguaje.

Para Windows, se puede conseguir en el siguiente enlace: https://www.python.org/downloads/
* Asegurarse que se agregue una variable de entorno al PATH.
* Pip se instalará junto con el interprete.

Para Linux y Mac, python ya se encuentra integrado en los sistemas, sólo es necesario obtener pip. Pip es el manejador de paquetes de python. Para su instalación, consultar el siguiente enlace: https://pip.pypa.io/en/stable/installing/#do-i-need-to-install-pip

* Para asegurarse que python está instalado correr en la terminal:
```sh
python -V
```
* Para asegurarse que pip está instalado correr en la terminal:
```sh
pip -V
```
$ pip install -r requirements.txt

## Instalacion de librerias

Ejecutar el siguiente comando en la terminal, donde se encuentra el archivo requirements.txt:

```sh
$ pip install -r requirements.txt
```
Si existe algun error, tambien se puede instalar manualmente de la siguiente manera:

```sh
$ pip install <package name>
```
## Librerías utilizadas
* Numpy
* Sympy
* Matplotlib
* Pandas