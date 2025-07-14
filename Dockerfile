# Use OpenJDK 21
FROM openjdk:21-jdk-slim

# Instalar dependências necessárias
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Diretório de trabalho
WORKDIR /app

# Copiar arquivos Maven (melhor cache de layers)
COPY .mvn/ .mvn
COPY mvnw pom.xml ./

# Tornar mvnw executável
RUN chmod +x mvnw

# Baixar dependências (layer separada para cache)
RUN ./mvnw dependency:go-offline -B

# Copiar código fonte
COPY src ./src

# Compilar aplicação
RUN ./mvnw clean package -DskipTests -B

# Porta dinâmica para Render
EXPOSE ${PORT:-8080}

# Comando para iniciar com porta dinâmica
CMD ["sh", "-c", "java -jar -Dserver.port=${PORT:-8080} target/backend-0.0.1-SNAPSHOT.jar"]
