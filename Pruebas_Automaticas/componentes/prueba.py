#!/usr/bin/env python
# -*- coding: utf-8 -*-

import json
import os

from datetime import datetime

import unicodedata

from componentes.tasks import enviarEncuesta

import boto3
from django.http import HttpResponse

from .models import Empresa, Cliente, Empleado


def pruebaE2E(request):
    PATH = ".\\smarttools\\static\\pruebas\\"
    try:
        if request.method == 'POST':
            navegadores = json.loads(unicodedata.normalize('NFKD', request.POST['navegadores']).encode('ascii','ignore'))


            os.system("mkdir "+PATH+"estooo")
            archivos = request.POST['archivos']

            return HttpResponse("{true}", content_type="application/json")

    except Exception as e:
        print e
        return HttpResponse(json.dumps(e.args), content_type="application/json", status=400)
