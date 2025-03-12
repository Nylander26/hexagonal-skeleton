# 🛠 Microservicio con Arquitectura Hexagonal

Este proyecto proporciona un **script Bash (`setup.sh`)** que configura automáticamente un entorno de desarrollo para microservicios en **Node.js** con **TypeScript** y una estructura basada en **Arquitectura Hexagonal**.

---

## 📌 ¿Qué hace el script?

El archivo `setup.sh` automatiza la configuración inicial del proyecto:

1. **Inicializa un nuevo proyecto Node.js** con `npm init -y`.
2. **Instala las dependencias necesarias**:
   - `express` → Servidor web
   - `@types/express` → Tipos de Express para TypeScript
   - `@types/node` → Tipos de Node.js
   - `ts-node` → Para ejecutar TypeScript sin compilar
   - `typescript` → Compilador de TypeScript
3. **Crea una estructura de carpetas** siguiendo principios de **Arquitectura Hexagonal**.
4. **Genera archivos de configuración**, incluyendo:
   - `tsconfig.json` → Configuración de TypeScript
   - `src/index.ts` → Archivo de entrada con un servidor Express básico
   - `.gitignore` → Para excluir archivos innecesarios en Git
   - `.dockerignore` → Para excluir archivos innecesarios en Docker

---

## 🚀 Pasos para ejecutar el script

### 1️⃣ Descargar el fichero zip (recomendado)
* Ir a tu repositorio en GitHub. 
* Hacer clic en "Code" → "Download ZIP". 
* Extraer el ZIP y mover a la carpeta del proyecto. 
* Seguir desde el paso 3 de la opción anterior (ejecutar setup.sh e inicializar Git). 

### 2️⃣ Clonar el repositorio sin el historial de git (opcional)
Si estás clonando desde un repositorio pero deseas cambiar el nombre del proyecto, puedes usar `degit` para clonar el proyecto sin el historial de Git:
```bash
npx degit nylander26/hexagonal-skeleton <NOMBRE_DEL_PROYECTO_A_CREAR>
cd <NOMBRE_DEL_PROYECTO_A_CREAR>
```

### 3️⃣ Dar permisos de ejecución al script
```bash
chmod +x setup.sh
```
En caso de no tener permisos de super usuario usar `sudo`:
```bash
sudo chmod +x setup.sh
```

### 4️⃣ Ejecutar el script
```bash
./setup.sh
```

### 5️⃣ Inicializa un nuevo repositorio en Git en el proyecto
```bash
git init
git add .
git commit -m "Inicialización del proyecto"
```

---

## 📂 Estructura de Directorios Generada

Después de ejecutar el script, la estructura de archivos será la siguiente:

```
📦 microservice/
 ┣ 📂 src/
 ┃ ┣ 📂 application/
 ┃ ┃ ┣ 📂 use-cases/
 ┃ ┃ ┗ 📂 dtos/
 ┃ ┣ 📂 domain/
 ┃ ┃ ┣ 📂 entities/
 ┃ ┃ ┣ 📂 repositories/
 ┃ ┃ ┣ 📂 services/
 ┃ ┃ ┗ 📂 value-objects/
 ┃ ┣ 📂 infrastructure/
 ┃ ┃ ┣ 📂 controllers/
 ┃ ┃ ┣ 📂 adapters/
 ┃ ┃ ┃ ┣ 📂 external-services/
 ┃ ┃ ┃ ┣ 📂 mappers/
 ┃ ┃ ┃ ┣ 📂 persistence/
 ┃ ┃ ┣ 📂 middlewares/
 ┃ ┃ ┣ 📂 http/
 ┃ ┃ ┣ 📂 config/
 ┃ ┃ ┃ ┣ 📂 httpClients/
 ┃ ┣ 📂 interfaces/
 ┃ ┃ ┣ 📂 ports/
 ┃ ┃ ┃ ┣ 📂 input/
 ┃ ┃ ┃ ┣ 📂 output/
 ┃ ┣ 📂 shared/
 ┃ ┃ ┣ 📂 utils/
 ┃ ┗ 📜 app.ts
 ┃ ┗ 📜 server.ts
 ┣ 📂 test/
 ┣ 📜 package.json
 ┣ 📜 tsconfig.json
 ┣ 📜 .gitignore
 ┣ 📜 .dockerignore
 ┗ 📜 setup.sh
```

---

## 📜 Contenido de `.gitignore`
El script genera un archivo `.gitignore` con las siguientes exclusiones:
```gitignore
node_modules/
dist/
.env
.DS_Store
```

## 📜 Contenido de `.dockerignore`
El script también genera un `.dockerignore` para evitar copiar archivos innecesarios al contenedor:
```dockerignore
node_modules/
dist/
.env
.git
```

---

## 🎯 ¿Qué sigue?

Una vez creada la estructura, puedes iniciar el servidor con:
```bash
npx ts-node src/app.ts
```

Esto iniciará un servidor en **http://localhost:3000** 🚀

---

¡Listo! Ahora tienes un proyecto con **TypeScript, Express y una estructura sólida** en segundos. 🔥

