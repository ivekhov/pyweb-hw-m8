from bottle import run, route, view
from datetime import datetime as dt
from random import random
from horoscope.horoscope import generate_prophecies
import os


@route("/")
def index():
    return "<h1>Success!</h1>"


@route("/check")
@view("predictions")
def index():
	now = dt.now()
	x = random()
	predictions = generate_prophecies(5, 3)

	return {
		"date": f"{now.year}-{now.month}-{now.day}", 
		"predictions": predictions,
		"special_date": x > 0.5, 
		"x": x,	
	}


@route("/api/test")
def api_test():
	return {"test_passed": True}


@route("/api/forecast")
def api_forecast():
	pass


if os.environ.get('APP_LOCATION') == 'heroku':
	run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))
else:
	run(host='localhost', port=8080, debug=True)
