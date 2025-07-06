chave = 'REPUBLICAS'
preço = '4567.01'
cifrada = ''

for i in range(len(preço)):
    if preço[i] != '.':
        cifrada = cifrada + chave[int(preço[i])]
    else:
        cifrada = cifrada + '.'