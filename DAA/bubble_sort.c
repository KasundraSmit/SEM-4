#include <stdio.h>

void main(){
	int list[10] = {5,15,78,96,1,4,65,78,12,36};
	int temp=0;
	int i;
	int j;
	for(i=1;i<10;i++){
		for(j=1;j<10;j++){
			if(list[j] > list[j+1]){
				temp = list[j]	;
				list[j] = list [j+1];
				list[j+1] = temp;
			}
		}
	}
	
	for(i=1;i<=10;i++){
		printf("%d \n",list[i]);
	}
}
