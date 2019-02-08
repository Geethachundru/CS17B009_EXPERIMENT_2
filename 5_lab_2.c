#include <stdio.h>
 
int main()
{
   int m, n, c, d, A[10][10], B[10][10], sum[10][10];
   for (c = 0; c < m; c++)
      for (d = 0; d < n; d++)
         scanf("%d", &A[c][d]);
   for (c = 0; c < m; c++)
      for (d = 0 ; d < n; d++)
         scanf("%d", &B[c][d]);
   for (c = 0; c < m; c++) {
      for (d = 0 ; d < n; d++) {
         sum[c][d] = A[c][d] + B[c][d];
      }
   }
   return 0;
}
