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
    "src/infrastructure/adapters"
    "src/infrastructure/external-services"
    "src/infrastructure/mappers"
    "src/infrastructure/persistence"
    "src/infrastructure/middlewares"
    "src/infrastructure/http"
    "src/infrastructure/config"
    "src/infrastructure/httpClients"
    "src/interfaces"
    "src/interfaces/ports"
    "src/interfaces/ports/input"
    "src/interfaces/ports/output"
    "src/shared"
    "src/shared/utils"
    "__test__"
)

for folder in "${folders[@]}"; do
    mkdir -p "$folder"
done

# Crear archivos base
echo 'import express from "express";
const app = express();
app.use(express.json());

const port = 3000;

app.listen(port, () => {
    console.log(`Servidor corriendo en http://localhost:${port}`);
});

export default app;
' > src/server.ts

echo 'import app from "./server";

app.get("/", (req, res) => {
    res.send("¡Hola, mundo!");
});
' > src/app.ts

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