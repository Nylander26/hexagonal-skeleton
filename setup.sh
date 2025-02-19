#!/bin/bash

echo "🚀 Creando proyecto y configurando TypeScript..."

# Inicializar package.json y agregar dependencias
npm init -y
npm install express @types/express @types/node ts-node typescript -D

# Crear estructura de carpetas
folders=(
    "src/application/use-cases"
    "src/application/dtos"
    "src/domain/entities"
    "src/domain/repositories"
    "src/domain/services"
    "src/domain/value-objects"
    "src/infrastructure/controllers"
    "src/infrastructure/repositories"
    "src/infrastructure/middlewares"
    "src/infrastructure/http"
    "src/infrastructure/config"
    "src/infrastructure/db"
    "src/interfaces"
    "src/shared"
    "__test__"
)

for folder in "${folders[@]}"; do
    mkdir -p "$folder"
done

# Crear archivos base
echo 'import express from "express";
const app = express();
app.use(express.json());
app.listen(3000, () => console.log("Server running on port 3000"));
' > src/index.ts

echo '{
  "compilerOptions": {
    "target": "es6",
    "module": "commonjs",
    "outDir": "./dist",
    "rootDir": "./src",
    "strict": true,
    "esModuleInterop": true,
    "skipLibCheck": true,
    "forceConsistentCasingInFileNames": true
  }
}' > tsconfig.json

# Crear .gitignore
echo 'node_modules/
dist/
.env
.DS_Store
' > .gitignore

# Crear .dockerignore
echo 'node_modules/
dist/
.env
.git
' > .dockerignore

echo "✅ Proyecto configurado con éxito."