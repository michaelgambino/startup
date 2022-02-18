import secrets

key = secrets.token_urlsafe(16)

fin = open("kijiji-manager-sample.cfg", "rt")

fout = open("kijiji-manager.cfg", "wt")

for line in fin:
	fout.write(line.replace('replace this string with a randomized value', key))

fin.close()
fout.close()
