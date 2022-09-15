# **_Docker_** + **_Vite_** + **_React_**

Proyecto de ejemplo para ejecutar una aplicación de react echa con el framework de vite en un contenedor docker.

## Tabla de contenidos

1. [Instalación](#install)
2. [Cómo se usa](#use)
3. [Tecnologías](#technologies)

<a name="install"></a>

## Instalación 🐱‍💻

1. Clonamos el repositorio.

```
git clone https://github.com/SaulR07/docker-react-vite-example.git
```

1. Instalamos el proyecto.

```
npm install
```

<a name="use"></a>

## Cómo se usa 🐱‍🐉

1. Creamos la imagen.

```
docker build . -t image-react-vite
```

2. Creamos el contenedor.

```
docker run --name container-react-vite -p 5173:5173 -v ruta:/app -v /app/node_modules/ image-react-vite
```

**_nota:_** _El comando **-v /app/node_modules/** Se usa para ignorar la carpeta node_modules de nuestro volumen ya que esta aplicación se creo en un ambiente con windows y al ejecutar nuestro contenedor con Linux puede causar errores._

3. Verificamos en nuestro navegador.

```
http://localhost:5173
```

4. Entramos en nuestro contenedor.

```
docker exec -it container-react-vite bash
```

5. Modificamos el archivo **src/App.jsx** para probar el funcionamiento de nuestro volumen.

<a name="technologies"></a>

## Tecnologías 🚀

🐳 [Docker](https://www.docker.com) <br>
♨ [Vite](https://vitejs.dev) <br>
🐱‍💻 Windows 10
