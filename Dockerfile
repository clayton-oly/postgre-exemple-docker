version: '3.8'

services:
  postgres:
    image: postgres:15
    container_name: postgres_local
    environment:
      POSTGRES_USER: admin
      POSTGRES_PASSWORD: "S3nh@F0rt3!"  # Use uma senha forte
      POSTGRES_DB: my_application
    ports:
      - "5432:5432"  # Expõe a porta para a API em outro App Service
    volumes:
      - postgres_data:/var/lib/postgresql/data
      - ./postgres-conf/postgresql.conf:/etc/postgresql/postgresql.conf
      - ./postgres-conf/pg_hba.conf:/etc/postgresql/pg_hba.conf
    command: ["postgres", "-c", "config_file=/etc/postgresql/postgresql.conf"]
    networks:
      - my-rede

volumes:
  postgres_data:

networks:
  my-rede:
    driver: bridge
