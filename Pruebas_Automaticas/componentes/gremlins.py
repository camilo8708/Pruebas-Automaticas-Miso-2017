import os
import uuid
import json
import random
import fileinput
import sys
from os import listdir

from django.http import HttpResponse

def gremlins(request):
    try:
        if request.method == 'POST':
            uid = str(uuid.uuid4())
            browser = str(request.POST['browser'])
            largo = str(request.POST['largo'])
            ancho = str(request.POST['ancho'])
            fhead = str(request.POST['fhead'])
            url = str(request.POST['url'])
            seed = str(request.POST['seed'])
            tiempo = str(request.POST['tiempo'])

            if (int(fhead) == 1):
                headless = "\"--headless\", \"--disable-gpu\","
            else:
                headless = ""

            command = "cd C:\\gremlins && mkdir " + uid + " && cd " + uid + " && git clone https://github.com/Jorgerunza/gremlins-webdriver.git && cd gremlins-webdriver && npm install && npm install -g wdio-json-reporter"
            os.system(command)

            wdio = "C:\\gremlins\\" + uid + "\\gremlins-webdriver\\wdio.conf.js"
            gtest = "C:\\gremlins\\" + uid + "\\gremlins-webdriver\\test\\specs\\gremlins-test.js"
            if (browser == "chrome"):
                configuration = "browserName: \'" + browser + "\', chromeOptions: { args: [ " + headless + "\"--window-size=" + largo + "," + ancho + "\" ]}"
            else:
                configuration = "browserName: 'firefox'"
            baseurl = "baseUrl: '" + url + "',"
            seed = "horde.seed(" + seed + ");"
            time = "browser.executeAsync(unleashGremlins, " + tiempo + ");"
            #puerto = "    port: "+str(random.randint(4000,4999))+","
            #replace(wdio, 10, puerto)

            replace(wdio, "browserName: 'chrome'", configuration)
            replace(wdio, "baseUrl: 'https://losestudiantes.co',", baseurl)
            replace(gtest, "horde.seed(1234);", seed)
            replace(gtest, "browser.executeAsync(unleashGremlins, 50000);", time)

            runTest = "cd C:\gremlins\\" + uid + "\gremlins-webdriver && npm test > log.txt"
            os.system(runTest)
            rutajson = "C:\gremlins\\" + uid + "\gremlins-webdriver\\report\\"
            rutalog = "C:\gremlins\\" + uid + "\gremlins-webdriver\\log.txt"

            respuesta= {}

            for objeto in listdir(rutajson):
                archivo = open(rutajson + objeto, "r")
                contenido = archivo.read()
                archivo.close()
                respuesta['id'] = uid
                respuesta['contenido'] = contenido

            logfile = open(rutalog, "r")
            log = logfile.read()
            archivo.close()
            respuesta['log'] = log

            return HttpResponse(json.dumps(respuesta), content_type="application/json")

    except Exception as e:
        print e
        return HttpResponse(json.dumps(e.args), content_type="application/json", status=400)


def replace(file,searchExp,replaceExp):
    for line in fileinput.input(file, inplace=1):
        if searchExp in line:
            line = line.replace(searchExp,replaceExp)
        sys.stdout.write(line)


