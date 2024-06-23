# Dockerfile

# Usa una imagen base de Python 3.10 slim     FROM python:3.10-slim
FROM jbarlow83/ocrmypdf

# Actualiza e instala bash
RUN apt-get update \
    && apt-get install -y bash \
    && rm -rf /var/lib/apt/lists/*

# Actualizar pip
RUN python3 -m pip install --upgrade pip

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Agrega el archivo de requisitos y luego instala las dependencias de Python
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código fuente y otros archivos necesarios
COPY server.py index.htm entrypoint.sh /app/
COPY static /app/static/

# Establece el script de entrada como el punto de entrada del contenedor
ENTRYPOINT ["sh", "entrypoint.sh"]
# ENTRYPOINT ["hug", "-f", "server.py"]
