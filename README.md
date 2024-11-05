# Tutorial material for trame v2

trame - a web framework that weaves together open source components into customized visual analytics easily.

Please use the links below to find more informations:

- [Tutorial](https://kitware.github.io/trame/guide/tutorial/)
- [trame website](https://kitware.github.io/trame/)

### Steps

#### Create a virtual environment and activate it

```
uv venv venv
.\venv\Scripts\activate
```

#### Add requirements

```
uv pip install -e .
```

#### Run app

Open default file

```
python viewervtu.py
```

Open specific file

```
python viewervtu.py -d "http://localhost:5102/static/file2.vtu"
```

#### Build Docker image

```bash
docker build -t pytrame .
```

#### Build Docker image with no cache

```
docker build --progress=plain --no-cache -f ./Dockerfile -t pytrame .
```

#### Run the Docker image on port 8082

```bash
docker run -it --rm -p 8082:80 pytrame
```

```
docker run -it --rm -p 8082:80 -e DATA_URL=http://192.168.1.202:5102/static/file2.vtu
```

Or if you need some prefix

```bash
docker run -it --rm -p 8082:80 -e TRAME_URL_PREFIX=/my-app/sub/path pytrame
```

#### Start docker container

```bash
docker compose up -d
```

SERVER EXAMPLE
https://github.com/Kitware/vtk-web-solutions/blob/master/client-server/trame-server.py
