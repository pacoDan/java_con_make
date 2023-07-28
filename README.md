# Compilación de Java con Make
Este repositorio contiene un archivo `Makefile` que permite compilar y generar un archivo `.jar` a partir de un archivo `Main.java` utilizando el compilador de Java y el programa `make`.
## Uso
1. Asegúrate de tener instalado el compilador de Java (`javac`) en tu sistema.
2. Clona este repositorio o copia el archivo `Makefile` en el directorio donde se encuentra tu archivo `Main.java`.
3. Ejecuta el siguiente comando para compilar el archivo `Main.java` y generar el archivo `Main.class` en la carpeta `build`, así como el archivo `java_con_make.jar` en el directorio principal:

```sh
make all
```
## Ejecución del archivo .jar
Una vez generado el archivo `java_con_make.jar`, puedes ejecutarlo usando el siguiente comando:

```sh
java -jar java_con_make.jar
```
## Para limpiar 
```sh
make clean
```
## Estructura del proyecto
.
├── Makefile
├── README.md
└── src
    └── Main.java

- `Makefile`: Archivo de configuración para automatizar la compilación y generación del archivo `.jar`.
- `README.md`: Este archivo, que proporciona información sobre cómo compilar Java con `make`.
- `src`: Directorio que contiene el archivo `Main.java`, que contiene el código fuente a compilar.

## Comandos disponibles

- `make`: Compila el archivo `Main.java` y genera el archivo `.jar`.
- `make clean`: Elimina los archivos generados, incluyendo la carpeta `build` y el archivo `.jar`.

