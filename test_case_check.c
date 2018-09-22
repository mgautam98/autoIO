#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
   char s1, s2;
   FILE *file1, *file2;
   file1 = fopen(argv[1],"r");
   file2 = fopen(argv[2],"r");

   if(file1 == NULL)
   {
      printf("\t\tError!\n");
      exit(1);
   }
   if(file2 == NULL)
   {
      printf("\t\tError!\n");
      exit(1);
   }


     do{
   		s1=getc(file1);
      s2=getc(file2);
   		if(s1!=s2){
        printf("\t\t\tTest Case Failed!\n\n");
        return 0;
      }
    }while(!feof(file1) || !feof(file2));
   	fclose(file1);
    fclose(file2);
    printf("\t\t\tTest Case Passed!\n\n");
   return 0;
}
