OSv Node-RED
============

This project aims to run Node Red as an OSv Unikernel and is using Capstan to build OSv images.

Node-RED is a tool for wiring together hardware devices, APIs and online services in new and interesting ways.

Build
-----

To build an OSv image of node red, just clone this repository first. After cloning run

`capstan build -v -m 1024M`

This should build the OSv image. 

Run
---

To try it out, run

`capstan run -f 1880:80`

After having started the image, you should be able to browse to http://localhost:1880 and be greeted by Node RED's user interface
