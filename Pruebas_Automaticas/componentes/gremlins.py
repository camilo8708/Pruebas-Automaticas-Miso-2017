import os
import uuid
import json
from django.http import HttpResponse

def gremlins(request):
    try:
        if request.method == 'POST':
            uid = str(uuid.uuid4())
            browser = request.POST['browser']
            largo = request.POST['largo']
            ancho = request.POST['ancho']
            fhead = request.POST['fhead']
            url = request.POST['url']
            seed = request.POST['seed']
            tiempo = request.POST['tiempo']

            if (int(fhead) == 1):
                headless = "\"--headless\", \"--disable-gpu\","
            else:
                headless = ""

            command = "cd C:\\gremlins && mkdir " + uid + " && cd " + uid + " && git clone https://github.com/Jorgerunza/gremlins-webdriver.git && cd gremlins-webdriver && npm install && npm install -g wdio-json-reporter"
            os.system(command)

            wdio = "C:\\gremlins\\" + uid + "\\gremlins-webdriver\\wdio.conf.js"
            gtest = "C:\\gremlins\\" + uid + "\\gremlins-webdriver\\test\\specs\\gremlins-test.js"

            configuration = "        browserName: \'" + browser + "\', chromeOptions: { args: [ " + headless + "\"--window-size=" + largo + "," + ancho + "\" ]}"
            baseurl = "    baseUrl: '" + url + "',"
            seed = "    horde.seed(" + seed + ");"
            time = "	browser.executeAsync(unleashGremlins, " + tiempo + ");"
            replace(wdio, 46, configuration)
            replace(wdio, 74, baseurl)
            replace(gtest, 17, seed)
            replace(gtest, 34, time)

            runTest = "cd C:\gremlins\\" + uid + "\gremlins-webdriver && npm test > log.txt"
            os.system(runTest)

            response_data = {}
            response_data['id'] = uid
            return HttpResponse(json.dumps(response_data), content_type="application/json")

    except Exception as e:
        print e
        return HttpResponse(json.dumps(e.args), content_type="application/json", status=400)


def replace (file, line, argument):
        with open(file, 'r+') as foo:
            data = foo.readlines()  # reads file as list
            pos = line
            data.insert(pos, argument + "\n")  # inserts before item to edit
            x = data[pos + 1]
            data.remove(x)  # removes item to edit
            foo.seek(0)  # seeks beginning of file
            for i in data:
                i.strip()  # strips "\n" from list items
                foo.write(str(i))



