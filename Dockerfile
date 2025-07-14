# Use OpenJDK 21
FROM openjdk:21-jdk-slim

# Diretório de trabalho
WORKDIR /app

# Copiar arquivos Maven
COPY .mvn/ .mvn
COPY mvnw pom.xml ./

# Baixar dependências
RUN ./mvnw dependency:go-offline -B

# Copiar código fonte
COPY src ./src

# Compilar aplicação
RUN ./mvnw clean package -DskipTests -B

# Expor porta
EXPOSE 8080

# Comando para iniciar
CMD ["java", "-jar", "target/backend-0.0.1-SNAPSHOT.jar"]
