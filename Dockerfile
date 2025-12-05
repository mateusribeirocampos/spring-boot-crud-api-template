# ============================================
# STAGE 1: Build
# ============================================
FROM eclipse-temurin:21-jdk-alpine AS builder

# Diretório de trabalho temporário
WORKDIR /build

# Copiar arquivos Maven
COPY .mvn/ .mvn
COPY mvnw pom.xml ./

# Tornar mvnw executável
RUN chmod +x mvnw

# Baixar dependências (layer cacheável)
RUN ./mvnw dependency:go-offline -B

# Copiar código fonte
COPY src ./src

# Compilar aplicação
RUN ./mvnw clean package -DskipTests -B

# ============================================
# STAGE 2: Runtime (Imagem Final)
# ============================================
FROM eclipse-temurin:21-jre-alpine

# Instalar curl para health checks
RUN apk add --no-cache curl

# Criar usuário não-root (segurança)
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring

# Diretório de trabalho
WORKDIR /app

# Copiar APENAS o JAR compilado do stage anterior
COPY --from=builder /build/target/backend-0.0.1-SNAPSHOT.jar app.jar

# Porta dinâmica para Render
EXPOSE ${PORT:-8080}

# Health check (opcional)
HEALTHCHECK --interval=30s --timeout=3s --start-period=40s \
  CMD curl -f http://localhost:${PORT:-8080}/actuator/health || exit 1

# Comando otimizado com flags JVM
CMD ["sh", "-c", "java -XX:+UseContainerSupport -XX:MaxRAMPercentage=75.0 -Djava.security.egd=file:/dev/./urandom -Dserver.port=${PORT:-8080} -jar app.jar"]
