import secrets

key = secrets.token_urlsafe(16)

#input file
fin = open("kijiji-manager-sample.cfg", "rt")
#output file to write the result to
fout = open("kijiji-manager.cfg", "wt")
#for each line in the input file
for line in fin:
	#read replace the string and write to output file
	fout.write(line.replace('replace this string with a randomized value', key))
#close input and output files
fin.close()
fout.close()

