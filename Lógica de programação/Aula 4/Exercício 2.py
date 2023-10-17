#Codigo para ver a media do aluno
nome = input("Digite o nome do aluno. ")

nota1 = float(input("Digite a nota do 1º Bim. "))
while nota1 < 0 or nota1 > 100:
    nota1 = float(input("Digite a nota do 1º Bim. "))

nota2 = float(input("Digite a nota do 2º Bim. "))
while nota2 < 0 or nota2 > 100:
    nota2 = float(input("Digite a nota do 2º Bim. "))

nota3 = float(input('Digite a nota do 3º Bim. '))
while nota3 < 0 or nota3 > 100:
    nota3 = float(input("Digite a nota do 3º Bim. "))

nota4 = float(input("Digite a nota do 4º Bim. "))
while nota4 < 0 or nota4 > 100:
    nota4 = float(input("Digite a nota do 4º Bim. "))



media = (nota1 + nota2 + nota3 +nota4) / 4
print(f"A media do aluno {nome} e de {media}")

if media > 60:
    print(f"O aluno {nome} ficou com a {media} foi aprovado parabens! ")
else:
    print(f"O aluno {nome} ficou com a {media} e ficou de recuperação. ")
