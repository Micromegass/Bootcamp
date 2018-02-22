

File.write("archivo2.txt", File.read("archivo1.txt")
IO.copy_stream("archivo1.txt", "archivo2.txt")
