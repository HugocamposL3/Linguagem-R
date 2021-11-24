
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

###############################################################
#Retorna a soma do números naturais até n
###############################################################
somaNaturais<-function(a){
  somaN <-0
  for(i in 0:a){
    somaN = somaN + i
  }
  return(somaN)
}
w<-somaNaturais(5)
print(w)
###############################################################
#Retorna a soma do números naturais até n com a fórmula
###############################################################
somaNaturais<-function(a){
  return(a*(a+1)/2)
}
w<-somaNaturais(100)
print(w)
########################################################  
#Retorna o fatorial de N
########################################################
fatorial<-function(r){
  fato<-1
  for(i in 1:r){
    fato = fato*i
  }
  return(fato)
}
t<-fatorial(5)
print(t)
########################################################  
#Retorna o fatorial de N recursiva
########################################################
fatorial<-function(r){
  if(r<1)return(1)
  return(r*fatorial(r-1))
}
t<-fatorial(0)
print(t)
########################################################
#Retorna a media de N
########################################################
media<-function(c){
  soma = 0
  cont = 0
  for(i in c){
    soma = soma +i
    cont = cont +1
  }
  return(soma/cont)
}
e<-media(2,1,3,4,5,3)
print(e)

#################################################
#Fibonassi
####################################################
fibo<-function(n){
  if(n==1) return(0)
  if(n==2) return(1)
  return(fibo(n-2)+fibo(n-1))
}
for (i in 1:300)
  print(fibo(i))