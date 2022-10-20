username = open("username.dat", "r")
lines = username.readlines()
# fermez le fichier après avoir lu les lignes
username.close()
# Itérer sur les lignes
for line in lines:
    print(line.strip())