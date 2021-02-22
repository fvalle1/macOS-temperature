def main(params):
	with open("appcast.xml") as file:
		appcast = file.read()

	return {"body":appcast,
		    "headers":{"Content-Type":"application/rss+xml"}
	}