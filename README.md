# Tutorial material for trame v2

trame - a web framework that weaves together open source components into customized visual analytics easily.

Please use the links below to find more informations:

- [Tutorial](https://kitware.github.io/trame/guide/tutorial/)
- [trame website](https://kitware.github.io/trame/)

### Steps

##### Create a virtual environment and activate it

```
uv venv venv
.\venv\Scripts\activate
```

##### Add requirements

```
uv pip install -e .
```

##### Run the app

```
cd .\viewervtu\app

python viewervtu.py --port 5015
```

# Build the Docker image

```bash
docker build -t pytrame .
```

# Build the Docker image with no cache

```
docker build --progress=plain --no-cache -f ./Dockerfile -t pytrame .
```

# Run the Docker image on port 8080

```bash
docker run -it --rm -p 8080:80 pytrame
```

Or if you need some prefix

```bash
docker run -it --rm -p 8080:80 -e TRAME_URL_PREFIX=/my-app/sub/path pytrame
```

SERVER EXAMPLE
https://github.com/Kitware/vtk-web-solutions/blob/master/client-server/trame-server.py
