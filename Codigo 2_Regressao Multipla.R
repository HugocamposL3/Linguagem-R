#-------------------------------------------------------------------------------------------
# Autor: Hugo Campos
# Data: 13/12/2021
# Objetivo: Algoritimo Para Regress�o Linear Multipla
#Conclus�o: De acordo com a predi��o da primeira linha do Data Frame acredito que a acerta��o seja
#Significativa "ruim", e tamb�m de acordo com o Sumario
#----------------------------------------------------------------------------
#C�digo 2: Predizendo a nota da prova do aluno de acordo com o tempo de sono e tempo de revis�o que o aluno teve
#----------------------------------------------------------------------------------------
dados2 <- read.csv2("C:/Users/hugolc/Documents/R/Banco de Dados 12.csv")
View(dados2)
#----------------------------------------------------------------------------------------
# Imprimindo dado
print (dados2)
View(dados2)
# Imprimindo a classe de dado
print(class(dados2))
# Imprimindo se dado � um data frame
print(is.data.frame(dados2))
# Imprimindo o n�mero de colunas
print(ncol(dados2))
# Imprimindo o n�mero de linhas
print(nrow(dados2))
#Imprimindo o Summary do dataset 
summary(dados2)
#Imprimindo a correla��o entre os dados
cor(dados2)
#---------------------------------------------------------------------------------------
mod <- lm(Notas ~ Tempo_Rev + Tempo_Sono, dados2)
summary(mod)$adj.r.squared
summary(mod)
print(mod)
#------------------------------------------------------------------------------------------
#A fun��o pairs.panels [no pacote psych] tamb�m pode ser usada para criar 
#um gr�fico de dispers�o de matrizes, com gr�ficos de dispers�o bivariados 
#abaixo da diagonal, histogramas na diagonal e a correla��o de Pearson acima da diagonal.
pairs.panels(dados2)
#-----------------------------------------------------------------------------------
predict(mod,data.frame(Tempo_Rev = 43, Tempo_Sono = 10))
