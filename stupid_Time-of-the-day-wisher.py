# Author: Mrinal Dhar
# Wishes you according to the time of the day.


import time
now = time.strftime("%H")
now = int(now)
if now > 0 and now < 12:
	greet = "Good Morning, Mrinal"
elif now > 12 and now < 16:
	greet = "Good Afternoon, Mrinal"
elif now > 16 and now < 20:
	greet = "Good Evening, Mrinal"
elif now > 20 and now < 24:
	greet = "Goodnight, Mrinal"

print greet
