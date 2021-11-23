
## Funções:

# A variavel "serieQ" vai apontar para um bloco de funções e esse bloco vai passar valores para a variavel A

# o nome da função (SerieQ) é o endereço da função na memória (armazena o texto da função)
###########################################################################
serieQ <- function(a) { # o A é uma variavel dentro de uma função ela que vai receber o dado passado para ela. (Formal)
  for(i in 1:a){ # variavel i vai varial de 1 até "a"
    b <- i^2
    print(b)
  }
}
############################################
# Para executar uma função é preciso evocar ela, então é preciso colocar parenteses:

serieQ(3) # Preciso passar também o valor do parametro de A, nesse caso A = 3.
###############################################
## Função que devolve parametro:
#############################################
somaQ <- function(b){
  soma <- 0
  for(i in 1:b){
    soma <- soma + i^2
  }
  return(soma)
}

x<- somaQ(3)
print(x)
###########################################################
# Caso eu não queira usar o 'return'
###########################################################
somaQ <- function(b){
  soma <- 0
  for(i in 1:b){
    soma <- soma + i^2
  }
 soma= soma+0
}

x<- somaQ(3)
print(x)

# Toda função em R tem return, o valor da variavel é o return da função
##########################################################
# Uma função que retorna o maior valor 
##########################################################
maior2<-function(a,b){
  if (a>b){
    return(a)
  }else{
    return(b)
  }
}
y<-maior2(3,4)
print(y)

################################################################
# Uma função que retorna o menor valor
###############################################################
menor3<-function(a,b,c){
  if(a<b)
    if(a<c)
      return(a)
    else
      return(c)
  else
    if(b<c)
      return(b)
    else
      return(c)
}
z<-menor3(2,10,9)
print(z)

##############################################
