def arquivo():
    bonus = 0
    while True:
        nome = input("Digite o nome do funcionario!\n")

        if nome.isnumeric():
            print("Números são invalidos, por favor digite somente letras.")
        else:
            break

    while True:
        try:
            hora = float(input(f"Digite o número de horas que o funcionario trabalhou esse mês.\n"))
            if hora < 0 or hora > 220:
                print("Insira um numero de horas de serviço validas!")
            else:
                break
        except:
            print("Numero de horas ultrapassa o permitido na lei, insira um numero de horas valido!")

    while True:
        try:
            valor = float(input("Salario por hora!\n"))
            if valor < 0 :
                print("Digite um valor valido!")
            else:
                break
        except:
            print("Valor inserido não e valido!")

    calculo = valor * hora

    if calculo > 2000:
        bonus = calculo + (calculo * 10) / 100
        print(f"O funcionario {nome} atingiu a meta e consegui o salario de {bonus} reais.")
    else:
        print(f"O funcionario {nome} não bateu o numero de horas trabalhadas, assim não obteve a bonificação ficando com salario final de {calculo} reais.")
    continuar()

def continuar():
    while True:
        dnv = input("Deseja calcular o bônus de outro funcionario yes/no?\n")

        if dnv == "yes":
            arquivo()
        elif dnv == "no":
            print("Obrigado por utilizar o sistema!")
            break
        else:
            print("Escolha uma opção valida entre yes ou no!")
arquivo()
