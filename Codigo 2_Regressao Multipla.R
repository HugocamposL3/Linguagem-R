#-------------------------------------------------------------------------------------------
# Autor: Hugo Campos
# Data: 13/12/2021
# Objetivo: Algoritimo Para Regressão Linear Multipla
#Conclusão: De acordo com a predição da primeira linha do Data Frame acredito que a acertação seja
#Significativa "ruim", e também de acordo com o Sumario
#----------------------------------------------------------------------------
#Código 2: Predizendo a nota da prova do aluno de acordo com o tempo de sono e tempo de revisão que o aluno teve
#----------------------------------------------------------------------------------------
dados2 <- read.csv2("C:/Users/hugolc/Documents/R/Banco de Dados 12.csv")
View(dados2)
#----------------------------------------------------------------------------------------
# Imprimindo dado
print (dados2)
View(dados2)
# Imprimindo a classe de dado
print(class(dados2))
# Imprimindo se dado é um data frame
print(is.data.frame(dados2))
# Imprimindo o número de colunas
print(ncol(dados2))
# Imprimindo o número de linhas
print(nrow(dados2))
#Imprimindo o Summary do dataset 
summary(dados2)
#Imprimindo a correlação entre os dados
cor(dados2)
#---------------------------------------------------------------------------------------
mod <- lm(Notas ~ Tempo_Rev + Tempo_Sono, dados2)
summary(mod)$adj.r.squared
summary(mod)
print(mod)
#------------------------------------------------------------------------------------------
#A função pairs.panels [no pacote psych] também pode ser usada para criar 
#um gráfico de dispersão de matrizes, com gráficos de dispersão bivariados 
#abaixo da diagonal, histogramas na diagonal e a correlação de Pearson acima da diagonal.
pairs.panels(dados2)
#-----------------------------------------------------------------------------------
predict(mod,data.frame(Tempo_Rev = 43, Tempo_Sono = 10))
