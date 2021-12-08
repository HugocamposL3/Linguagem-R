#1º Parte da Aula 
#-------------------------------------------------------------------------------------
#Projeto Exemplo
#-------------------------------------------------------------------
# Primeiro Passo - Carregar os dados
# nos vetores x e y
# variável preditora (% de aditivo)
x <- c(1,2,3,4,5,6)
# variável de resposta (índice de octanagem da gasolina)
y <- c(80.5, 81.6, 82.1, 83.7, 83.9, 85.0)
# Segundo Passo - Criação do modelo e
# impressão dos coeficientes
# usando a função lm (linear model)
# para criar o modelo de relação linear
modelo <- lm(y~x)
# impressão dos coeficientes linear e angular
print(modelo)
# Terceiro Passo - Predição da octanagem da gasolina
# para 4% e 5% de aditivo
# predição para 4% de aditivo
a <- data.frame(x = 4)
resultado <- predict(modelo,a)
cat("4% de aditivo gera um índice de octanagem de",resultado,"\n")
# predição para 5% de aditivo
a <- data.frame(x = 5)
resultado <- predict(modelo,a)
cat("5% de aditivo gera um índice de octanagem de",resultado,"\n")
# Dando um nome para o arquivo da imagem.
png(file = "Aditivo_Octanagem.png")
# Desenhando o gráfico
plot( # dados da coordenada x
x,
# dados da coordenada y
y,
# cor dos pontos
col = "red",
# título principal
main = "Aditivo x Octanagem",
# adiciona uma linha no gráfico
abline(modelo),
# espessura dos pontos
cex = 1.3,
# formato dos pontos
pch = 16,
# título do eixo x
xlab = "% de Aditivo",
# título do eixo y
ylab = "Índice de Octanagem da Gasolina")
# salvando e fechando o arquivo da imagem.
dev.off()

#--------------------------------------------------------------------------------------
#1º Caso
#Um Cientista de Dados deseja estudar a possível relação entre o
#salário (em mil reais) e o tempo de experiência (em anos completos) no cargo de gerente
#de agências bancárias de um grande Banco.
#--------------------------------------------------------------------------------------
# Primeiro Passo - Carregar os dados nos vetores x e y
# variável preditora (experiência em anos)
x <- c(0,1,4,5,6,7,8,8,9,9,10,11,11,13,15,15,17,18,20,20,22,23,23,25,25,27,29)
# variável de resposta (salário em milhares de reais)
y <- c(1.9307, 1.9076, 2.3615, 2.2230, 2.5384, 2.5692, 2.2769,2.6538,2.7769,
2.9076, 2.9923, 2.8230, 3.1461, 2.8538, 3.1307, 3.0923,3.1769,3.6000,
3.2307, 4.0923, 4.0923, 4.2230, 4.1153, 4.5076, 4.4846,4.7076,4.7461)
# Segundo Passo - Criação do modelo e impressão dos coeficientes
# usando a função lm (linear model) para criar o modelo de relação linear
modelo <- lm(y~x)
# impressão dos coeficientes linear e angular
print(modelo)
# Terceiro Passo - Predição do salário em milhares de reais
# para 3, 14 e 35 anos de experiência
# predição para 3 anos de experiência
a <- data.frame(x = 3)
resultado <- predict(modelo,a)
cat("3 anos de experiência projeta um salário de",
resultado,"milhares de reais.\n")
# predição para 14 anos de experiência
a <- data.frame(x = 14)
resultado <- predict(modelo,a)
cat("14 anos de experiência projeta um salário de",
resultado,"milhares de reais.\n")
# predição para 35 anos de experiência
a <- data.frame(x = 35)
resultado <- predict(modelo,a)
cat("35 anos de experiência projeta um salário de",
resultado,"milhares de reais.\n")
# Quarto Passo - Impressão do gráfico de dispersão
# com a reta da regressão linear
# Dando um nome para o arquivo da imagem.
png(file = "Experiência_Salario.png")
# Desenhando o gráfico
plot(x, y, col = "red", main = "Experiência x Salário",
abline(modelo), cex = 1.3, pch = 16,
xlab = "Experiência (anos)",ylab = "Salário (Milhares de R$)")
# fechando o arquivo da imagem.
dev.off()

#--------------------------------------------------------------------------------------
#2º Caso
#Um biólogo deseja estudar a possível relação entre o a massa do corpo
#e a massa do cérebro dos mamíferos.
#--------------------------------------------------------------------------------------
# Primeiro Passo - Carregar os dados nos vetores x e y
# variável preditora (Massa Corporal em kg)
x <- c(0.023, 0.120, 0.122, 1.040, 1.350, 2.500, 3.300, 6.800, 10.000, 27.660,
35.000, 36.330, 52.160, 55.500,62.000,100.000,187.100, 192.000, 207.000,
465.000, 521.000, 529.000, 2547.000, 6654.000)
# variável de resposta (Massa Cerebral em g)
y <- c(0.4, 1.0, 3.0, 5.5, 2.5, 12.1, 25.6, 179.0, 115.0, 115.0, 56.0, 119.5,
440.0, 175.0, 1320.0, 157.0, 419.0, 180.0, 406.0, 423.0, 655.0, 680.0,
4603.0, 5712.0)
# Segundo Passo - Criação do modelo e impressão dos coeficientes
# usando a função lm (linear model) para criar o modelo de relação linear
modelo <- lm(y~x)
# impressão dos coeficientes linear e angular
print(modelo)
# Terceiro Passo - Predição da Massa Cerebral em gramas
# para massa corporal de 41, 300 e 18000 kg
# predição para 41 kg de Massa Corporal
a <- data.frame(x = 41)
resultado <- predict(modelo,a)
cat("Massa Corporal 41 kg - Massa Cerebral de",resultado,"g.\n")
# predição para 300 kg de Massa Corporal
a <- data.frame(x = 300)
resultado <- predict(modelo,a)
cat("Massa Corporal 300 kg - Massa Cerebral de",resultado,"g.\n")
# predição para 18000 kg de Massa Corporal
a <- data.frame(x = 18000)
resultado <- predict(modelo,a)
cat("Massa Corporal 18000 kg - Massa Cerebral de",resultado,"g.\n")
# Quarto Passo - Impressão do gráfico de dispersão
# com a reta da regressão linear
# Dando um nome para o arquivo da imagem.
png(file = "Massa Corporal_Cerebral.png")
# Desenhando o gráfico
plot(x, y, col = "red", main = "Massa Corporal x Massa Cerebral",
abline(modelo), cex = 1.3, pch = 16,
xlab = "Massa Corporal (kg)",ylab = "Massa Cerebral (g)")
# fechando o arquivo da imagem.
dev.off()

#--------------------------------------------------------------------------------------
#3º Caso
#A secretaria de planejamento urbano de uma cidade coletou dados do
#tamanho da população (em milhões de pessoas), de cinco em cinco anos.
#--------------------------------------------------------------------------------------
# Primeiro Passo - Carregar os dados nos vetores x e y
# variável preditora (Ano)
x <- c(1980, 1985, 1990, 1995, 2000)
# variável de resposta (População em milhões)
y <- c(2.1, 2.9, 3.2, 4.1, 4.9)
# Segundo Passo - Criação do modelo e impressão dos coeficientes
# usando a função lm (linear model) para criar o modelo de relação linear
modelo <- lm(y~x)
# impressão dos coeficientes linear e angular
print(modelo)
# Terceiro Passo - Predição do tamanho da população em milhoes
# para os anos 1967, 2011 e 3000
# predição para o ano 1967
a <- data.frame(x = 1967)
resultado <- predict(modelo,a)
cat("População em 1967 = ",resultado,"milhões de pessoas.\n")
# predição para o ano 2011
a <- data.frame(x = 2011)
resultado <- predict(modelo,a)
cat("População em 2011 = ",resultado,"milhões de pessoas.\n")
# predição para o ano 3000
a <- data.frame(x = 3000)
resultado <- predict(modelo,a)
cat("População em 3000 = ",resultado,"milhões de pessoas.\n")
# Quarto Passo - Impressão do gráfico de dispersão
# com a reta da regressão linear
# Dando um nome para o arquivo da imagem.
png(file = " Ano_População.png")
# Desenhando o gráfico
plot(x, y, col = "red", main = "Ano x População",
abline(modelo), cex = 1.3, pch = 16,
xlab = "Ano",ylab = " População (Milhões)")
# fechando o arquivo da imagem.
dev.off()

#--------------------------------------------------------------------------------------
#4º Caso
#Um estudo mostrou haver uma correlação entre a altura de pessoas
#saudáveis (IMC entre 18,5 e 25) e a expectativa de vida.
#--------------------------------------------------------------------------------------
# Primeiro Passo - Carregar os dados nos vetores x e y
# variável preditora (Altura em cm)
x <- c(165, 168, 170, 173, 175, 178, 180, 183, 185, 188)
# variável de resposta (Expectativa de vida em anos)
y <- c(71.3, 66.1, 60.9, 69.3, 65.9, 63.6, 63.2, 63.5, 60.7, 60.8)
# Segundo Passo - Criação do modelo e impressão dos coeficientes
# usando a função lm (linear model) para criar o modelo de relação linear
modelo <- lm(y~x)
# impressão dos coeficientes linear e angular
print(modelo)
# Terceiro Passo - Predição da Expectativa de vida em anos
# para as alturas de 200, 220 e 300 cm.
# predição para a altura de 200 cm
a <- data.frame(x = 200)
resultado <- predict(modelo,a)
cat("Uma pessoa com 200 cm de altura tem uma expectativa de vida de ",
resultado,"anos.\n")
# predição para a altura de 220 cm
a <- data.frame(x = 220)
resultado <- predict(modelo,a)
cat("Uma pessoa com 220 cm de altura tem uma expectativa de vida de ",
resultado,"anos.\n")
# predição para a altura de 300 cm
a <- data.frame(x = 300)
resultado <- predict(modelo,a)
cat("Uma pessoa com 300 cm de altura tem uma expectativa de vida de ",
resultado,"anos.\n")
# Quarto Passo - Impressão do gráfico de dispersão
# com a reta da regressão linear
# Dando um nome para o arquivo da imagem.
png(file = " Altura_Expectativa.png")
# Desenhando o gráfico
plot(x, y, col = "red", main = "Altura x Expectativa de Vida",
abline(modelo), cex = 1.3, pch = 16,
xlab = "Altura (cm)",ylab = "Expectativa de Vida (Anos)")
# fechando o arquivo da imagem.
dev.off()

#--------------------------------------------------------------------------------------
#5º Caso:
#Uma empresa fabrica dispositivos eletrônicos que podem ser usados
#em uma ampla faixa de temperatura. A empresa sabe que o aumento da temperatura
#diminui o tempo de vida do dispositivo. Um estudo foi realizado no qual o tempo de vida
#em horas foi determinado como uma função da temperatura.
#--------------------------------------------------------------------------------------
# Primeiro Passo - Carregar os dados nos vetores x e y
# variável preditora (Temperatura em oC)
x <- c(10, 20, 30, 40, 50, 60, 70, 80, 90)
# variável de resposta (Tempo de vida em horas)
y <- c(420, 365, 285, 220, 176, 117, 69, 34, 5)
# Segundo Passo - Criação do modelo e impressão dos coeficientes
# usando a função lm (linear model) para criar o modelo de relação linear
modelo <- lm(y~x)
# impressão dos coeficientes linear e angular
print(modelo)
# Terceiro Passo - Predição do tempo de vida
# para as temperatudas de 0, 23 e 38 oC.
# predição para temperatura de 0oC
a <- data.frame(x = 0)
resultado <- predict(modelo,a)
cat("A 0 oC o dispositivo tem uma expectativa de vida de",
resultado,"horas.\n")
# predição para temperatura de 23oC
a <- data.frame(x = 23)
resultado <- predict(modelo,a)
cat("A 23 oC o dispositivo tem uma expectativa de vida de",
resultado,"horas.\n")
# predição para temperatura de 38oC
a <- data.frame(x = 38)
resultado <- predict(modelo,a)
cat("A 38 oC o dispositivo tem uma expectativa de vida de",
resultado,"horas.\n")
# Quarto Passo - Impressão do gráfico de dispersão
# com a reta da regressão linear
# Dando um nome para o arquivo da imagem.
png(file = " Temperatura_Expectativa.png")
# Desenhando o gráfico
plot(x, y, col = "red", main = "Temperatura x Expectativa de Vida",
abline(modelo), cex = 1.3, pch = 16,
xlab = "Temperatura (oC)",ylab = "Expectativa de Vida (Horas)")
# fechando o arquivo da imagem.
dev.off()

#2º Parte da AULA 
# variável preditora (experiência em anos)
x <- c( 0 , 1 , 4 , 5 , 6 , 7 , 8 , 8 , 9 ,
9 ,10 ,11 ,11 ,13 ,15 ,15 ,17 ,18 ,
20 ,20 ,22 ,23 ,23 ,25 ,25 ,27 ,29 )
# variável de resposta (salário em milhares de reais)
y <- c( 1.9307, 1.9076, 2.3615, 2.2230, 2.5384, 2.5692, 2.2769, 2.6538, 2.7769,
2.9076, 2.9923, 2.8230, 3.1461, 2.8538, 3.1307, 3.0923, 3.1769, 3.6000,
3.2307, 4.0923, 4.0923, 4.2230, 4.1153, 4.5076, 4.4846, 4.7076, 4.7461)
modelo <- lm(y~x)
# estou informando um vector de dados
dado = data.frame(x=c(5,10,15,20,25))
cat("\nDados\n")
print(dado)
cat("\nPredições\n")
print(predict(modelo,dado))
# o default de level é .95, sendo desnecessário informá-lo
cat("\nIntervalo de confiança\n")
print(predict(modelo,dado,interval="confidence",level=.95))
cat("\nIntervalo de predição\n")
print(predict(modelo,dado,interval="prediction",level=.95))