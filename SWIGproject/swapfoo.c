int fact(int n) {
     if (n <= 1) return 1;
     else return n*fact(n-1);
 }
char* swap(char *S)
{
printf("|C enter\n");
     int i,j,l;
     char t;
     l=strlen(S);
     i=0;
     j=l-1;
     while (i<j)
     {
        t=S[i];
        S[i]=S[j];
        S[j]=t;
        i++;j--;
      }
     //printf("\n%s\n", S);
printf("\nC exit| \n");
return S;

}
