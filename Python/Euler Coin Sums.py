count = 0
for a in range(2):
    for b in range(3):
        for c in range(5):
            for d in range(11):
                for e in range(21):
                    for f in range(41):
                        for g in range(101):
                            for h in range(201):
                                total = (a * 200) +(b * 100)+(c * 50)+(d * 20)+(e * 10)+(f * 5)+(g * 2)+(h * 1)
                                if total == 200:
                                    count += 1
                                if total > 200:
                                    break
                                    
print count