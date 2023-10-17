#Codigo para fazer uma calculadora
print("Se você deseja fazer uma adição escolha +")
print(" Se você deseja fazer uma subtrair escolha -")
print("Se você deseja fazer uma divisão escolha /")
print("Se você deseja fazer uma multiplicação escolha *")

escolha = input("Qual operação deseja fazer")

Num1 = float(input("Escolha 1 número inteiro para fazermos a operação escolhida a cima"))
Num2 = float(input("Escolha mais 1 número inteiro para fazermos a operação escolhida"))

if escolha == "+": 
    soma = Num1 + Num2
    print(f"A soma do {Num1} + {Num2} e = {soma}")

elif escolha == "-":
    menos = Num1 - Num2
    print(f"A subtração do {Num1} - {Num2} e = {menos}")

elif escolha == "/":
    divisao = Num1 / Num2
    print(f"A divisao do {Num1} / {Num2} e = {divisao}")

else:
    vezes = Num1 * Num2
    print(f"A multiplicação do {Num1} * {Num2} e = {vezes}")
    