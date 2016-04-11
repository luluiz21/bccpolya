#include <stdio.h>

double mod(double a, double b);

int main(void){
	double result = a-b;
	
	if(result < 0)
		result *= -1;
		
	return result;
}

double raizq(double x)
{
        double aproximacao = 0.01; 
        double x1 = 1.0;
        double x2 = 0; 
        do
        {
            x2 = x1;
            x1x1 = (x1 + (x/x1))/2;
            
        } while (mod(x1, x2) > aproximacao);
        return x1;
        
}

int main()
{
	double x;
	scanf("%lf", &x);
	if (x>=0)
	printf("%.2f\n", raizq(x));
	else
		if (x<0)
		printf("Raiz não válida\n");
}