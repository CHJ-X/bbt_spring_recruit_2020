import mysql.connector
from flask import Flask

import config
from config import db

app = Flask(__name__)
app.config['SECRET_KEY'] = config.app['SECRET_KEY']#随机字符串
conn = mysql.connector.connect(host=db['host'], user=db['user'],
        passwd=db['passwd'], database=db['database'], charset='utf8mb4')
print(db)
print(conn)
db = conn.cursor()#指针？


dep = [
    #(1, '北校', '体育学院'),
    (2, '北校', '建筑学院'),
    (3, '北校', '工商管理学院(体尖)'),
    (4, '南校', '材料科学与工程学院'),
    (5, '南校', '化学与化工学院'),
    (6, '南校', '轻工科学与工程学院'),
    (7, '南校', '食品科学与工程学院'),
    (8, '南校', '数学学院'),
    (9, '南校', '物理与光电学院'),
    (10, '南校', '经济与贸易学院'),
    (11, '南校', '计算机科学与工程学院'),
    (12, '南校', '生物科学与工程学院'),
    (13, '南校', '环境与能源学院'),
    (14, '南校', '软件学院'),
    (15, '南校', '工商管理学院(非体尖)'),
    (16, '南校', '公共管理学院'),
    (17, '南校', '马克思主义学院'),
    (18, '南校', '外国语学院'),
    (19, '南校', '法学院'),
    (20, '南校', '新闻与传播学院'),
    (21, '南校', '艺术学院'),
    (22, '南校', '设计学院'),
    (23, '南校', '医学院'),
    (24, '南校', '国际教育学院'),
    (25, '国际校区', '机械与汽车工程学院'),
    (26, '国际校区', '土木与交通学院'),
    (27, '国际校区', '电力学院'),
    (28, '国际校区', '电子与信息学院'),
    (29, '国际校区', '自动化科学与工程学院'),
    (30, '国际校区', '微电子学院'),
    (31, '国际校区', '生物医学科学与工程学院'),
    (32, '国际校区', '分子科学与工程学院'),
    (33, '国际校区', '吴贤能智能工程学院')
]



val = [('北校体育学院',)]
for index in range(len(dep)):
    val.append((dep[index][1] + dep[index][2],),)
print (val)

#db.executemany('INSERT INTO colleges (name) VALUES (%s)', val)
#conn.commit()
#print (dep[index - 1][1] + dep[index - 1][2])