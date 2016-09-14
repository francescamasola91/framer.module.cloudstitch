# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "Edward Benson"
	twitter: ""
	description: ""

# Set background color
Screen.backgroundColor = "#AAEEFF"
SIDE = 200
SPACE = 20
COLS = Screen.size.height / (SIDE + SPACE)

# Load data from the spreadsheet
cloudstitch = require "cloudstitch"
cloudstitch.get('ted', 'polymer-jobs', (data) -> 
  listLogo(company, i) for company, i in data.jobs
)

listLogos = (data) ->
console.

listLogo = (company, i) ->
	x = ((SIDE + SPACE) * i) % Screen.size.width
	y = ((SIDE + SPACE) * (i / COLS))
			
	logo = new Layer(
		height: SIDE
		width: SIDE
		x: x
		y: y
		image: company.LogoUrl
	)