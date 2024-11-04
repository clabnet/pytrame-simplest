# Tutorial material for trame v2

trame - a web framework that weaves together open source components into customized visual analytics easily.

Please use the links below to find more informations:

-   [Tutorial](https://kitware.github.io/trame/guide/tutorial/)
-   [trame website](https://kitware.github.io/trame/)

# Steps to run the tutorial

-   fare partire la modalita .venv con il comando:

```
python3.9 -m venv .venv
python -m pip install --upgrade pip
.\.venv\Scripts\activate
```

-   installare i pacchetti necessari con il comando:

```
pip install trame vtk trame-vuetify trame-vtk trame-components trame-plotly requests plotly Flask
```

-   Nel primo prompt fare partire api.py con il comando:

```
cd .\app
python api.py
```

-   Nel secondo prompt fare partire viewervtu.py il comando:

```
cd .\app
python viewervtu.py --port 5015
```

# Build the image

```bash
docker build -t pytrame .
```

# Run the image on port 8080

```bash
docker run -it --rm -p 8080:80 pytrame
```

Or if you need some prefix

```bash
docker run -it --rm -p 8080:80 -e TRAME_URL_PREFIX=/my-app/sub/path pytrame
```

SERVER EXAMPLE
https://github.com/Kitware/vtk-web-solutions/blob/master/client-server/trame-server.py
