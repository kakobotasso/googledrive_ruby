require 'rubygems'
require 'google_drive'

puts "E-mail: "
email = gets

puts "Password: "
password = gets
session = GoogleDrive.login(email, password)

ss = session.spreadsheet_by_title("SCRUM")
ws = ss.worksheet_by_title("Sheet1")

p ws.num_rows
p ws.num_cols

ws.rows.each do |row|
	p row
end

#Writting on cells
#ws[2,1] = "It"
#ws[2,2] = "Works"
#ws.save
#ws.reload

# Print value of cells
#puts ws[2,1] +  ws[2,2]