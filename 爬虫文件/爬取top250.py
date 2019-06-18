from bs4 import BeautifulSoup
import pymysql
import requests
import re
import os

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

def get_html(web_url):  
    header = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.108 Safari/537.36 2345Explorer/8.5.1.15355"}
    html = requests.get(url=web_url, headers=header).text
    Soup = BeautifulSoup(html, "lxml")
    data = Soup.find("ol").find_all("li")  
    return data

def get_info(all_move, connect, cursor):
    for info in all_move:

        nums = re.findall(r'<em class="">\d+</em>', str(info), re.S | re.M)  
        nums = re.findall(r'\d+', str(nums), re.S | re.M)
        num = nums[0]


        names = info.find("span")  
        name = names.get_text()


        charactors = info.find("p")  
        charactor = charactors.get_text().replace(" ", "").replace("\n", "")  
        charactor = charactor.replace("\xa0", "").replace("\xee", "").replace("\xf6", "").replace("\u0161", "").replace("\xf4", "").replace("\xfb", "").replace("\u2027", "")

       
        data = {'num':num, 'name':name, 'charactor':charactor}
        print(data)
        # 保存数据
        cursor.execute("insert into doubantop(num,name,charactor)values(%s,%s,%s)",
                       [data['num'], data['name'], data['charactor']])
        # 提交
        connect.commit()
    return


if __name__ == "__main__":
    connect = connect_db()
    cursor = connect.cursor()  
    page = 0 
    while page <= 225:
        web_url = "https://movie.douban.com/top250?start=%s&filter=" % page
        all_move = get_html(web_url)
        data = get_info(all_move, connect, cursor)  
        page += 25

    connect.close()  
