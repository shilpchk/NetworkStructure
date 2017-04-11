
import numpy as np
import matplotlib.pyplot as plt
from pylab import *
import igraph

nodes=10000000;

g=igraph.Graph.Barabasi(nodes, 2, power=0.8);
cn=g.degree();


data=cn
sorted_vals = np.sort(np.unique(data))
ccdf = np.zeros(len(sorted_vals))
n = float(len(data))
name='ccdf_nonB0p8N7.txt'
fil = open(name,'w')
for i, val in enumerate(sorted_vals):
   ccdf[i] = np.sum(data >= val)
   fil.write("%d \t %d \n" %(val, ccdf[i]))

fil.close()


n=max(cn)-2
count, bin = np.histogram(cn,n)
plt.loglog(bin[1:],count, '.')
plt.show()

fil = open("m2Ba1p2N7.dd", "w");
for i in range(len(bin)-1):
    fil.write("%d \t %d \n" %(bin[i+1], count[i]));

fil.close()


ax.loglog(sorted_vals, ccdf, "g.")



