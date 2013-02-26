require 'rubygems'
require 'google_drive'

puts "E-mail: "
email = gets

puts "Password: "
password = gets
session = GoogleDrive.login(email, password)

#Listing files
for file in session.files
  puts file.title
end

#Download some file
#file = session.file_by_title("Roupas")
#file.download_to_file("/home/kako/roupas.doc")