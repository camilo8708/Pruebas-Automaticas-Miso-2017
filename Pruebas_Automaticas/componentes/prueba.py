#!/usr/bin/env python
# -*- coding: utf-8 -*-

import json
import os

from django.core.files.storage import FileSystemStorage
from django.http import HttpResponse


def pruebaE2E(request):
    PATH = ".\\smarttools\\static\\pruebas\\"
    ID = 100200
    try:
        if request.method == 'POST':
            ct = 0
            while ct < int(request.POST['filesLength']):
                myfile = request.FILES['file'+str(ct)]
                fs = FileSystemStorage(PATH+str(ID))
                filename = fs.save(myfile.name, myfile)
                ct += 1

            navegadores = json.loads(str(request.POST['navegadores']))

            os.system(PATH+"copia.bat "+str(navegadores["chrome"])+" "+str(navegadores["firefox"])+" "+str(navegadores["ie"])+" "+str(navegadores["safari"])+" "+str(navegadores["opera"])+" "+str(ID))
            archivos = request.POST['archivos']

            return HttpResponse("{true}", content_type="application/json")

    except Exception as e:
        print e
        return HttpResponse(json.dumps(e.args), content_type="application/json", status=400)
