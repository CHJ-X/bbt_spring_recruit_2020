#主函数

from flask import Flask
import mysql.connector
import config

app = Flask(__name__)
app.config['SECRET_KEY'] = config.app['SECRET_KEY']#随机字符串

from controller.user.user import *

"""
#测试用
if __name__ == '__main__':
    app.run(host='127.0.0.1', port=9990)
"""