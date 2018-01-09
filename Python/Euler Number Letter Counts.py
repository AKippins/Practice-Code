from num2words import num2words

total = 0

def convert(x):
    asWord = num2words(x)
    asWord = asWord.replace(" ", "")
    asWord = asWord.replace("-", "")
    addToTotal(len(asWord))
    # print num2words(x)

def addToTotal(x):
    global total
    total += x


for x in xrange(1,1001):
    convert(x)

print total

# asWord = num2words(115)
# asWord = asWord.replace(" ", "")
# asWord = asWord.replace("-", "")
# print len(asWord)
