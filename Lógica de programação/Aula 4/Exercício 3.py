#Codigo para calcular quanto ira pagar no cinema
idade = int(input("Digite a sua idade. "))

while idade < 0:
    idade = int(input("Digite a sua idade. "))
if idade >= 0 and idade < 12:
    print("Você pagara 10 reais. ")
elif idade >= 12 and idade < 65:
    print("Você pagara 20. ")
elif idade >= 65:
    print("Você pagara 15. ")
else:
    print(f"Por favor digite uma idade valida. ")
