from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.action_chains import ActionChains
import requests
from PIL import Image
import base64
import re
import time


class Demo():
    def login(self):
        login_url = "https://kyfw.12306.cn/otn/resources/login.html"
        driver = webdriver.Chrome()
        driver.get(login_url)
        account = driver.find_element_by_class_name("login-hd-account")
        account.click()
        userName = driver.find_element_by_id("J-userName")
        userName.send_keys("15157757688")
        password = driver.find_element_by_id("J-password")
        password.send_keys("yzh980513")
        self.driver = driver

    def getimage(self):
        try:
            img_element = WebDriverWait(self.driver, 100).until(
                EC.presence_of_element_located((By.ID, "J-loginImg"))
            )
        except Exception as e:

            print(u"网络开小差,请稍后尝试")
        base64_str = img_element.get_attribute("src").split(",")[-1]
        imgdata = base64.b64decode(base64_str)
        with open('1.jpg', 'wb') as file:
            file.write(imgdata)
        self.img_element = img_element

        img = Image.open('1.jpg')
        img.show()

    def getnum(self):
        ver = input("请输入验证码（如1,2）:")
        yanSol = ['35,35', '105,35', '175,35', '245,35', '35,105', '105,105', '175,105', '245,105']
        yanList = []
        soList = ver.split(',')
        for i in soList:
            print(i)
        print(soList)
        self.result = soList

    def moveAndClick(self):
        num=[]
        for j in self.result:
            num.append(int(j))
        print(num)
        element = self.driver.find_element_by_class_name('touclick-wrapper')

        for i in num:
            if i <= 4:
                ActionChains(self.driver).move_to_element_with_offset(element, 50 + i * 65, 70).click().perform()
                print(i)
            else:
                i = i - 4
                ActionChains(self.driver).move_to_element_with_offset(element, 50 + i * 65, 140).click().perform()
                print(i)




    def submit(self):
        btn = self.driver.find_element_by_id("J-login")
        btn.click()

    def __call__(self):
        self.login()
        time.sleep(3)
        self.getimage()
        time.sleep(3)
        self.getnum()
        time.sleep(3)
        self.moveAndClick()
        time.sleep(1)
        self.submit()
        time.sleep(10000)


Demo()()


