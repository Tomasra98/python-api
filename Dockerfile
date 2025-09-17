# Usamos una imagen base oficial de Python
FROM python:3.7.11-slim

# Ponemos el directorio de trabajo en el contenedor
WORKDIR  /python-api

# Copiamos el archivo de requerimientos al contenedor
COPY requirements.txt requirements.txt

# Instalamos las dependencias del archivo requirements.txt
RUN pip install -r requirements.txt

# Copiamos todo el contenido del proyecto al contenedor
COPY . .

# Exponemos el puerto 5000 para la app Flask
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
