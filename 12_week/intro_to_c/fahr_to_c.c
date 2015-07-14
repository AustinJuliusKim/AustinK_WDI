#include <stdio.h>

float c_to_f(float c){
	float fahr;
	fahr = (9.0/5.0) *c+32;
	return fahr;
}

void main(){
	float fahr, celsius;
	int lower, upper, step, counter;

	lower = 0;
	upper = 300;
	step = 20;

	for (celsius = 0; celsius <= upper; celsius += step){
		printf("%f   %f\n", celsius, c_to_f(celsius));
	}


}