names = open('names.txt')

def splitNames(lists):
    posCount = 0
    finalScore = 0
    for x in lists:
        x = x.replace('"','')
        x = x.split(',')
        x = sorted(x)

    for y in x:
        posCount += 1
        finalScore += getScore(y, posCount)
    print finalScore
    
def getScore(name, pos):
    score = 0
    nameLen = len(name)
    while nameLen > 0:
        value = letterValue(name[nameLen-1:nameLen])
        nameLen -= 1
        score += value
    score *= pos
    return score
    
def letterValue(letter):
    values = {'A':1,
              'B':2,
              'C':3,
              'D':4,
              'E':5,
              'F':6,
              'G':7,
              'H':8,
              'I':9,
              'J':10,
              'K':11,
              'L':12,
              'M':13,
              'N':14,
              'O':15,
              'P':16,
              'Q':17,
              'R':18,
              'S':19,
              'T':20,
              'U':21,
              'V':22,
              'W':23,
              'X':24,
              'Y':25,
              'Z':26
    }
    value = values[letter]
    return value

def finalScore(score):
    finalScore += score
   
splitNames(names)