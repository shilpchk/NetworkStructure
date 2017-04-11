
from subsetp import lnfaSub
from lnfa import lognormdd
import numpy as np
import matplotlib.pyplot as plt
from pylab import *
import pickle

m=2; mu=0; s=4.; nodes=100000;

ssize=1000;
g, cn, ft = lnfaSub(mu, s, m, ssize, nodes)
g1, cn1, ft1 = lognormdd(mu, s, m, nodes)



data=cn; 
sorted_vals = np.sort(np.unique(data))
cdf = np.zeros(len(sorted_vals))
n = float(len(data))
for i, val in enumerate(sorted_vals):
   cdf[i] = np.sum(data >= val)/n

data1=cn1; 
sorted_vals1 = np.sort(np.unique(data1))
cdf1 = np.zeros(len(sorted_vals1))
n1 = float(len(data1))
for i, val1 in enumerate(sorted_vals1):
   cdf1[i] = np.sum(data1 >= val1)/n1
  

plt.loglog(sorted_vals, cdf, ".")
plt.loglog(sorted_vals1, cdf1, ".")
plt.show()





n=max(cn)-2
count, bin = np.histogram(cn,n)
fil = open("m2s4a1Local1KN7.dd", "w");
for i in range(n):
    fil.write("%d \t %d \n" %(bin[i+1], count[i]));

fil.close()




n=max(cn)-2
count, bin = np.histogram(cn,n)
filename="a1s2chLocal10000.txt"
fil = open(filename, "w");
for i in range(len(cn)):
   fil.write("%d\n" %(cn[i]));

fil.close()



data=cn;   
sorted_vals = np.sort(np.unique(data))
ccdf = np.zeros(len(sorted_vals))
n = float(len(data))
name='ccdfa1s2Local1000.txt'
fil = open(name,'w')
for i, val in enumerate(sorted_vals):
   ccdf[i] = np.sum(data >= val)
   fil.write("%d \t %d \n" %(val, ccdf[i]))

fil.close()





fil = open("a1s2N7_Local1000.txt", "w");
for i in range(len(bin)-1):
   if(count[i]!=0):
      fil.write("%d \t %d \n" %(i+2, count[i]));

fil.close()



myfile = open("Xlocal1p.data", "wb")
for i in range(len(count)):
    print >> myfile, "%d" %count[i]

myfile.close()




g1, cn1, ft1 = lognormdd(mu, s, m, nodes)


n=max(cn)-2
count, bin = np.histogram(cn,n)
plt.loglog(bin[:n],count, '.')

n1=max(cn1)-2
count1, bin1 = np.histogram(cn1,n1)
plt.loglog(bin1[:n1],count1, '.')
plt.show()

fil = open("m2s2a1Local1pN7.dd", "w");
for i in range(n):
    fil.write("%d \t %d \n" %(bin[i+1], count[i]));

fil.close()


myfile = open("Xbarlocal1p.data", "wb")
for i in range(len(count)):
    print >> myfile, "%d" %count[i]

myfile.close()

myfile = open("Cbarlocal1k.data", "wb")
for i in range(len(cn)):
    print >> myfile, "%d" %cn[i]

myfile.close()
