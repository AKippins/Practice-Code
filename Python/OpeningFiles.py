user_info = open('../../../Desktop/uid.txt', 'r')
unpw = {}
for x in user_info:
    x = x.split(":")
    unpw[x[0]] = x[2]
    print(x)
print(unpw["sdgs"])
user_info.close()