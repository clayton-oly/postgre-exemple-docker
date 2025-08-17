FROM postgres:15

# Configura variáveis padrão
ENV POSTGRES_USER=user
ENV POSTGRES_PASSWORD=pass
ENV POSTGRES_DB=mydb

EXPOSE 5432

# O CMD padrão do Postgres já inicia o banco
