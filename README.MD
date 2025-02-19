# 🛠 Microservicio con Arquitectura Hexagonal

Este proyecto proporciona un **script Bash (`setup.sh`)** que configura automáticamente un entorno de desarrollo para microservicios en **Node.js** con **TypeScript** y una estructura basada en **Arquitectura Hexagonal / DDD**.

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
3. **Crea una estructura de carpetas** siguiendo principios de **Arquitectura Hexagonal / DDD**.
4. **Genera archivos de configuración**, incluyendo:
   - `tsconfig.json` → Configuración de TypeScript
   - `src/index.ts` → Archivo de entrada con un servidor Express básico
   - `.gitignore` → Para excluir archivos innecesarios en Git
   - `.dockerignore` → Para excluir archivos innecesarios en Docker

---

## 🚀 Pasos para ejecutar el script

### 1️⃣ Clonar el repositorio (opcional)
Si estás clonando desde un repositorio:
```bash
git clone <URL_DEL_REPO>
cd <NOMBRE_DEL_REPO>
```

### 2️⃣ Dar permisos de ejecución al script
```bash
chmod +x setup.sh
```

### 3️⃣ Ejecutar el script
```bash
./setup.sh
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
 ┃ ┃ ┣ 📂 repositories/
 ┃ ┃ ┣ 📂 middlewares/
 ┃ ┃ ┣ 📂 http/
 ┃ ┃ ┣ 📂 config/
 ┃ ┃ ┗ 📂 db/
 ┃ ┣ 📂 interfaces/
 ┃ ┣ 📂 shared/
 ┃ ┗ 📜 index.ts
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
npx ts-node src/index.ts
```

Esto iniciará un servidor en **http://localhost:3000** 🚀

---

¡Listo! Ahora tienes un proyecto con **TypeScript, Express y una estructura sólida** en segundos. 🔥

