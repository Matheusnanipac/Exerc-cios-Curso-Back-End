#Codigo para determinarmos em qual categoria vai se encaixar  
print("Para sabermos em qual categoria você ira jogar nos forneça sua idade.")
Escolha = int(input("Digite sua idade. "))
Nome = input("Digite seu nome. ")

if Escolha >= 10 and Escolha <= 12:
    print(f"O atleta {Nome} de {Escolha} anos se encaixa na categoria Sub-11.")
elif Escolha >= 13 and Escolha <= 14:
    print(f"O atleta {Nome} de {Escolha} anos se encaixa na categoria Sub-13.")
elif Escolha >= 15 and Escolha <= 16:
    print(f"O atleta {Nome} de {Escolha} anos se encaixa na categoria Sub-15.")
elif Escolha >= 17 and Escolha <= 18:
    print(f"O atleta {Nome} de {Escolha} anos se encaixa na categoria Sub-18.")
else:
    print(f"Olá {Nome} você não tem mais idade para participar de nenhuma categoria desse processo seletivo.")
