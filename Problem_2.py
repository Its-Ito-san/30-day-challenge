sum = 0
fibonacci = [1, 2]

while fibonacci[-1] <= 4000000:
    if fibonacci[-1] % 2 == 0:
        sum += fibonacci[-1]
    next_fibonacci = fibonacci[-1] + fibonacci[-2]
    fibonacci.append(next_fibonacci)

print(sum)