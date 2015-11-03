import urllib2
from pyquery import PyQuery as pq
from lxml import etree

def save_pic(url, count):
	photo = urllib2.urlopen(url)
	photo = photo.read()
	fp = open(count+".jpg", "w")
	fp.write(photo)
	fp.close()

FIRST_URL = "http://www.commitstrip.com/en/2012/02/22/interview/"

d = pq(url=FIRST_URL)
count=1

while 1:
	print "Saving comic number "+count+"...\n"
	count += 1
	NEXT_URL = d('.nav-next a').attr('href')
	save_pic(d('img.alignnone').attr('src'))
	d = pq(url=NEXT_URL)

