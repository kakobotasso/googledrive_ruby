require 'rubygems'
require 'google_drive'

puts "E-mail: "
email = gets

puts "Password: "
password = gets
session = GoogleDrive.login(email, password)

ws = session.spreadsheet_by_key("0AhR2tTuGJQUwdER5bHAzaWJvY2hFay1EbU1SNHhUeEE").worksheets[0]

#Writting on cells
#ws[2,1] = "It"
#ws[2,2] = "Works"
#ws.save
#ws.reload

# Print value of cells
puts ws[2,1] +  ws[2,2]