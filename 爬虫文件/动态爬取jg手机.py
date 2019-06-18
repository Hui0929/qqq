from selenium.webdriver import Chrome
from config import *
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from time import sleep
from selenium.common.exceptions import NoSuchElementException
import pymysql

def next_page(client, wait, page_num):
    END_PAGE = 1
    while len(client.find_elements_by_class_name('gl-item')) < 60:
        client.execute_script('window.scrollTo(0, document.body.scrollHeight)')
        sleep(1)
    print("[+] 第{}加载完成".format(page_num))

    parse_page(page_num, client)

    # 下一页
    page_num += 1
    if page_num > END_PAGE:
        print('前{}页爬取成功'.format(END_PAGE))
        return


    wait.until(
        EC.presence_of_element_located(
            (By.CSS_SELECTOR, '#J_bottomPage > span.p-skip > input')
        )
    )

    wait.until(
        EC.element_to_be_clickable(
            (By.CSS_SELECTOR, '#J_bottomPage > span.p-skip > a')
        )
    )

    input_ = client.find_element_by_css_selector('#J_bottomPage > span.p-skip > input')
    input_.clear()
    input_.send_keys(page_num)

    input_.send_keys(Keys.ENTER)
    wait.until(
        EC.text_to_be_present_in_element(
            (By.CSS_SELECTOR, '#J_bottomPage > span.p-num > a.curr'),
            str(page_num)
        )
    )

    next_page(client, wait, page_num)

def connect_db():
    connect = pymysql.connect( 
        user="root",
        password="admin",
        host="localhost",
        db="ojmovie",
        port=3306,
        charset=("utf8"),  
        use_unicode=True,
    )
    return connect
def parse_page(page_num, client):
    print("[+] 开始解析第{}页数据".format(page_num))
    items = client.find_elements_by_class_name('gl-item')
    index = 1
    
    for item in items:
        print("[{}] ".format(index), end="")
        try:
            title = item.find_element_by_css_selector("div.p-name > a > em").text
        except NoSuchElementException:
            title = None
        try:
            price = item.find_element_by_css_selector("div.p-price > strong > i").text
        except NoSuchElementException:
            price = None
       
       
        try:
            comment = item.find_element_by_css_selector(".p-commit a").text
        except NoSuchElementException:
            comment = None

        print("{} >>> {}   >>> {}".format(title, price, comment))
        
        connect=connect_db()
        cursor = connect.cursor() 
        cursor.execute("insert into jdgoods(id,TITLE,PRICE,COMMENT)values (%s,%s,%s,%s)",(index,title, price, comment))
        connect.commit()
        index += 1
    print("[+] 解析第{}页数据完成".format(page_num))
    connect.close()

def search(client, url, keyword,wait):
    client.get(url)
    wait.until(
        EC.presence_of_element_located(
            (By.ID, 'key')
        )
    )

    wait.until(
        EC.element_to_be_clickable(
            (By.CSS_SELECTOR, '#search > div > div.form > button > i')
        )
    )
  


    input_ = client.find_element_by_id('key')
    input_.send_keys(keyword)



    botton = client.find_element_by_css_selector('#search > div > div.form > button > i')
    botton.click()
    print("[+] 点击搜索完成")

    # 翻页
    page_num = 1
    next_page(client, wait, page_num)
    
def main():

    
    client = Chrome()
    url = "http://www.jd.com"

    KEYWORD = '手机'
    
    wait = WebDriverWait(client, 10)
    search(client, url, KEYWORD, wait)
    
if __name__ == '__main__':
    main()



