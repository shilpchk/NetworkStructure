
from lnfa import lognormdd
import numpy as np
import matplotlib.pyplot as plt
from pylab import *
import pickle

m=2; mu=0; s=1.5; alpha=0.8; nodes=1000000;  

g, cn, ft = lognormdd(mu, s, m, alpha, nodes)

def plot_ccdf(data, ax):
   sorted_vals = np.sort(np.unique(data))
   ccdf = np.zeros(len(sorted_vals))
   n = float(len(data))
   for i, val in enumerate(sorted_vals):
      ccdf[i] = np.sum(data >= val)/n
   ax.loglog(sorted_vals, ccdf, "g.")


plot_ccdf(cn,plt)


# Figure 2 - Nonlinear
n=max(cn)-2
count, bin = np.histogram(cn,n)
plt.loglog(bin[1:],count, '.')
plt.show()

fil = open("m2a9Non7.dd", "w");
for i in range(len(bin)-1):
    fil.write("%d \t %d \n" %(bin[i+2], count[i]));

fil.close()


fil = open('m2CNa4Non7.dat','w')
for i in range(nodes):
    fil.write("%d \n" %(cn[i]));

fil.close()

# logarithmic binning
[c,b]=np.histogram(cn,bins=np.logspace(0,4,200))


plt.loglog((b[1:]+b[0:199])/2,c,'b.')
plt.show()


