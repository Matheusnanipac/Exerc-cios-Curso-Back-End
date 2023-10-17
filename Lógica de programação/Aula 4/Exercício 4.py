while True:
    try:
        usuario = int(input("Digite um número inteiro e positivo. "))
        break
    except:
        print("Digite somento numeros inteiros positivos")
    
while usuario < 0:
    usuario = int(input("Digite um número inteiro e positivo. "))
while usuario >= 0:
    print(usuario)
    usuario = usuario - 1
