import requests
from json import loads
from PIL import Image
import config
session = requests.Session()
url = "https://kyfw.12306.cn/otn/login/init"
response = session.get(url)
captcha_url="https://kyfw.12306.cn/passport/captcha/captcha-image?login_site=E&module=login&rand=sjrand&0.5604448691516117"
cap_response = session.get(captcha_url)
with open('1.jpg', 'wb') as f:
    f.write(cap_response.content)
img = Image.open('1.jpg')
img.show()
ver = input("请输入验证码>>>")
soList = ver.split(',')
yanSol = ['35,35', '105,35', '175,35', '245,35', '35,105', '105,105', '175,105', '245,105']
yanList = []
for item in soList:
    print(item)
    yanList.append(yanSol[int(item)])
yanStr = ','.join(yanList)
f.close()
check_url = "https://kyfw.12306.cn/passport/captcha/captcha-check"
data = {
    "answer": yanStr,
    "login_site": "E",
    "rand": "sjrand"
    }
check_response = session.post(check_url, data=data)
print(check_response.text)
check_res = check_response.json()
if not check_res['result_code'] == '4':
    exit('验证码错误')
login_url = "https://kyfw.12306.cn/passport/web/login"
login_data = {
    "username": config.username,
    "password": config.password,
    "appid": "otn",
    }
login_response = session.post(login_url, data=login_data)
print(login_response.text)
