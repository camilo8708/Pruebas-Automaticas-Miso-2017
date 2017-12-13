#!/usr/bin/env python
# -*- coding: utf-8 -*-

import json
import os
import time
from os import listdir
from random import randint

from django.core.files.storage import FileSystemStorage
from django.http import HttpResponse

PATH = ".\\smarttools\\static\\pruebas\\"


def getId():
    id = randint(100000, 999999)
    while os.path.exists(PATH + str(id)):
        id = randint(100000, 999999)

    return id


def resultadoE2E(request, id):
    if request.method == "GET":
        prueba = []
        archivo = []
        respuesta = {}

        while len(respuesta) == 0:
            time.sleep(1)
            for objeto in listdir(PATH+str(id)):
                if ".js" in objeto:
                    prueba.append(objeto)
                else:
                    archivo.append(objeto)

            for navegador in archivo:
                ruta = os.getcwd()
                ruta += PATH[1:]+str(id)+"\\"+navegador+"\\report\\"
                if os.path.exists(ruta):
                    for objeto in listdir(ruta):
                        archivo = open(ruta+objeto, "r")
                        contenido = archivo.read()
                        archivo.close()
                        respuesta[navegador.replace("webdriverio-","")] = contenido

        return HttpResponse(json.dumps(respuesta), content_type="application/json")


def pruebaE2E(request):
    try:
        if request.method == 'POST':
            id = getId()
            ct = 0
            while ct < int(request.POST['filesLength']):
                myfile = request.FILES['file'+str(ct)]
                fs = FileSystemStorage(PATH+str(id))
                filename = fs.save(myfile.name, myfile)
                ct += 1

            navegadores = json.loads(str(request.POST['navegadores']))

            os.system(PATH+"copia.bat "+str(navegadores["chrome"])+" "+str(navegadores["firefox"])+" "+str(navegadores["ie"])+" "+str(navegadores["safari"])+" "+str(navegadores["opera"])+" "+str(id))

            return HttpResponse(json.dumps(str(id)), content_type="application/json")

    except Exception as e:
        print e
        return HttpResponse(json.dumps(e.args), content_type="application/json", status=400)


