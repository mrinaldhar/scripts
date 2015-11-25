"""
Author: Mrinal Dhar

Script to automatically download a song given its name
and adds it to my iTunes library. 

"""

import json
import urllib2
import sys
import os

if __name__ == "__main__":
	search = sys.argv[1:]
	response = urllib2.urlopen('https://www.googleapis.com/youtube/v3/search?part=snippet&q='+"+".join(search)+'&key=XXXXXXX_PUT_YOUR_KEY_HERE_XXXXXXXXXX')
	response = response.read()
	response = json.loads(response)
	url = "https://www.youtube.com/watch?v="+response["items"][0]["id"]["videoId"]
	downloader = "http://youtubeinmp3.com/fetch/?video="+url
	download = urllib2.urlopen(downloader)
	ofp = open("/Users/sankaul/Music/iTunes/iTunes Media/Automatically Add to iTunes.localized/"+" ".join(search)+".mp3", "w")
	ofp.write(download.read())
	ofp.close()
