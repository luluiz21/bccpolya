# bccpolya

#1 Descrição do problema:
Desenvolver um programa em C que calcule aproximações da raiz quadrada de um numero real

#2 Linguagem matemática:
Para solução do problema foi utilizade o algotimo babilonico.
Na formola o valor x1 é um valor arbritário, enquanto o valor x1 valerá como um back-up do x1(guardará seu valor para um calcilo mais preciso).
Portanto, é feito média aritmética entre o x1 e a divisão do numero (n) com o x1. Subsequente é subtraido do módulo do x1 o módulo do x2 para para entender o quanto é a distância da aproximacão e se é necessário uma nova iteracão.
Sendo a raiz quadrada de um número n, e x1 a aproximacão inicial, temos:

x1 = (x1 + (n/x0))/2 |x1| - |x2| = distância da aproximacão.

#3 Português Estruturado:

algoritmo "raiz quadrada"

funcao mod(a : real, b : real) : real inicio resultado : real; resultado = a - b;

se(resultado < 0)
    resultado = resultado * -1;
fim-se

retorne resultado;

Fim

funcao raizq(n : real) Inicio precisao : real; precisao = 0.01;

x1 : real;
x1 = 1.0;

x2 : real;
x2 = 1.0;

faca
    x2 = x1;
    x1 = (x1 + (n/x1))/2;     
enquanto (mod(x1, x2) > precisao);

retorne x1;

#4 Fluxograma
