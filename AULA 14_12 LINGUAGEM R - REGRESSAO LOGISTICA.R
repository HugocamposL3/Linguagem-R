# Carregando dados já setado no R.studio
input <- mtcars[,c("am","cyl","hp","wt")] # [linha e colunas]
print (input)
View(input)

# GLM = gradiente Logistic Model
# y = am - xi = cyl || hp || wt - Binomial = Binario 
am.data = glm(formula = am ~ cyl + hp + wt, data = input, family = binomial)

print(summary(am.data))
# intercept ou z= 19,7 || b1 = 0.48.cyl || b2=0.03.hp || b3=9.14.wt
# p value tem que ser próximo de zero 
#cyl não interfere em nada no nosso dataset, de acordo o summary 
#Fuja dos atributos que não ganham estrelas 
# Unico atributo que afeta a regressão é o wt

# Fazendo o calculo para saber se o carro é automatico ou não
# 0 = Manual 
# 1 = Automatico
cilindrada = 6
cavalo = 110
peso = 2.620
z = 19.70288 +  (0.48760*cilindrada) + ( 0.03259 * cavalo) + (-9.14947*peso)
probabilidade = 1/(1+exp(-z))
print(probabilidade)

cilindrada2 = 6
cavalo2 = 110
peso2 =3.125
z2 = 19.70288 +  (0.48760*cilindrada2) + ( 0.03259 * cavalo2) + (-9.14947*peso2)
probabilidade2 = 1/(1+exp(-z2))
print(probabilidade2)