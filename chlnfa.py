
from lnfa import lognormdd
import numpy as np
import matplotlib.pyplot as plt
from pylab import *
import pickle

m=2; mu=0; s=10.; nodes=10000000;  

g, cn, ft = lognormdd(mu, s, m, nodes)


# Figure 1 - Degree distribution
n=max(cn)-2
count, bin = np.histogram(cn,n)
plt.loglog(bin[1:],count, '.')
plt.show()

fil = open("m2s10N7.dd", "w");
for i in range(n):
    fil.write("%d \t %d \n" %(bin[i+2], count[i]));

fil.close()


fil = open('cnp1.dat','r')
cn=pickle.load(fil);
fil.close()

# logarithmic binning
[c,b]=np.histogram(cn,bins=np.logspace(0,4,200))


plt.loglog((b[1:]+b[0:199])/2,c,'b.')
plt.show()


