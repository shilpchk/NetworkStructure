def binsearch(value, arr, N):
   low=0; high=N;
   while(low < high):
      mid = low + int((high-low)/2);
      if(arr[mid] < value):
         low = mid+1;
      else:
         high = mid;
   return low

