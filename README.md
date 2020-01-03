# BDCoE_19
from bs4 import BeautifulSoup

import requests


urls=['https://www.imdb.com/list/ls002939221/','https://www.imdb.com/list/ls002939221/?sort=list_order,asc&st_dt=&mode=detail&page=2','https://www.imdb.com/list/ls002939221/?sort=list_order,asc&st_dt=&mode=detail&page=3','https://www.imdb.com/list/ls002939221/?sort=list_order,asc&st_dt=&mode=detail&page=4','https://www.imdb.com/list/ls002939221/?sort=list_order,asc&st_dt=&mode=detail&page=5','https://www.imdb.com/list/ls002939221/?sort=list_order,asc&st_dt=&mode=detail&page=6','https://www.imdb.com/list/ls002939221/?sort=list_order,asc&st_dt=&mode=detail&page=7','https://www.imdb.com/list/ls002939221/?st_dt=&mode=detail&page=8&sort=list_order,asc']

for url in urls:
	source = requests.get(url).text
	soup = BeautifulSoup(source,'lxml')
	for content in soup.find_all('div',class_='lister-item-content'):
		head=content.find('h3',class_='lister-item-header')
		i=head.find('span',class_='lister-item-index').text
		name=head.a.text
		year=head.find('span',class_='lister-item-year').text
		print(i,name)
		print(year)
		det=content.find('p',class_='text-muted')
		genre=det.find('span',class_='genre').text
		try:
			time=det.find('span',class_='runtime').text
			print("runtime:",time)
		except AttributeError:
			print()		
		print("genre:",genre)
		rating=content.find('span',class_='ipl-rating-star__rating').text
		print(rating)
		des=content.find('p',class_="").text
		print(des)
		print()

