import socket
import sys
import requests
import requests_oauthlib
import json

ACCESS_TOKEN ="1056489607385280512-Mxz6q9MQ3lTd4qqSiHtfuHZ1Zq7DD8"
ACCESS_SECRET ="UmVU6mPV3MSHlo8MoIAp2JXIYqc8Rxc0U55n0N3bKcqnT"
CONSUMER_KEY = "Ae5SNnc0Ar6hPrvRdBtXIbSy4"
CONSUMER_SECRET ="Fb5ucvcockEIFNCwB5VpHDdTulGF9XrMqj02txewkV1yUivgiq"
my_auth = requests_oauthlib.OAuth1(CONSUMER_KEY, CONSUMER_SECRET,ACCESS_TOKEN, ACCESS_SECRET)


def getingtweet():
    url = 'https://stream.twitter.com/1.1/statuses/filter.json'	
    data = [('language', 'en'), ('locations', '-130,-20,100,50'),('track','#')]
    url = url + '?' + '&'.join([str(t[0]) + '=' + str(t[1]) for t in data])
    resp = requests.get(url, auth=my_auth, stream=True)
    print(url, resp)
    return resp




def sendtospark(resp,conn):
    for line in resp.iter_lines():
            try:
                tweet = json.loads(line)
                text = tweet['text']
                print(text)
                print ("------------------------------------------",conn)
                conn.send(tweet_text+'\n')
        
            except:
                continue
   

IP = 'localhost'
PORT =6000
conn = None
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

s.bind((IP,PORT))
s.listen(1)

print("waiting...")
conn, addr = s.accept()

print("Connected..")
resp = getingtweet()
sendtospark(resp,conn)
