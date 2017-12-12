import os
import uuid


def gremlins(request):
    try:
        if request.method == 'POST':
            uid = str(uuid.uuid4())
            browser = request.POST['browser']
            largo = request.POST['largo']
            fhead = request.POST['fhead']
            url = request.POST['url']
            correo = request.POST['correo']
            seed = request.POST['seed']
            tiempo = request.POST['tiempo']

            if (int(fhead) == 1):
                headless = "\"--headless\", \"--disable-gpu\","
            else:
                headless = ""

            url = "https://organicos.herokuapp.com"
            seed = "123456"
            tiempo = "60000"

            command = "cd C:\\gremlins && mkdir " + uid + " && cd " + uid + " && git clone https://github.com/Jorgerunza/gremlins-webdriver.git && cd gremlins-webdriver && npm install"
            os.system(command)

            wdio = "C:\\gremlins\\" + uid + "\\gremlins-webdriver\\wdio.conf.js"
            gtest = "C:\\gremlins\\" + uid + "\\gremlins-webdriver\\test\\specs\\gremlins-test.js"

            configuration = "        browserName: \'" + browser + "\', chromeOptions: { args: [ " + headless + "\"--window-size=" + largo + "," + ancho + "\" ]}"
            baseurl = "    baseUrl: '" + url + "',"
            seed = "    horde.seed(" + seed + ");"
            time = "	browser.executeAsync(unleashGremlins, " + tiempo + ");"
            self.replace(wdio, 46, configuration)
            self.replace(wdio, 74, baseurl)
            self.replace(gtest, 17, seed)
            self.replace(gtest, 34, time)

            runTest = "cd C:\gremlins\\" + uid + "\gremlins-webdriver && npm test > log.txt"
            os.system(runTest)

            response_data = {}
            response_data['id'] = uid
            return HttpResponse(json.dumps(response_data), content_type="application/json")

    except Exception as e:
        print e
        return HttpResponse(json.dumps(e.args), content_type="application/json", status=400)


def replace (self, file, line, argument):
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



