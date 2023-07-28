# Nombre del archivo .java sin la extensión
MAIN_CLASS = Main

# Directorios de entrada y salida
SRC_DIR = src
BUILD_DIR = build

# Archivo .java y .class
JAVA_SOURCE = $(SRC_DIR)/$(MAIN_CLASS).java
CLASS_FILE = $(BUILD_DIR)/$(MAIN_CLASS).class

# Nombre del archivo .jar a generar
JAR_FILE = java_con_make.jar

# Regla para compilar el archivo .java y mover el .class a la carpeta build
$(CLASS_FILE): $(JAVA_SOURCE)
		javac -d $(BUILD_DIR) $(JAVA_SOURCE)

# Regla para generar el archivo .jar
$(JAR_FILE): $(CLASS_FILE)
		cd $(BUILD_DIR) && jar cvfe ../$(JAR_FILE) $(MAIN_CLASS) $(MAIN_CLASS).class
# Regla por defecto
all: $(JAR_FILE)

# Regla para limpiar los archivos generados
clean:
	rm -rf $(BUILD_DIR) $(JAR_FILE)
	
# Para ejecutar es $ java -jar main.jar