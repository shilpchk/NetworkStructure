
import numpy as np
import matplotlib.pyplot as plt
from pylab import *
import powerlaw

nodes=10000000;
cn = [0]*nodes;
a=[a * 0.1 for a in range(10, 60)]
alpha100=[a * 0.1 for a in range(10, 60)]

for j in range(len(a)):
   filename='cn'+str(a[j])+'.txt'
   fil = open(filename,'r')
   cn = fil.readlines()
   fil.close()
   for i in range(nodes):
      cn[i]=int(cn[i]);
   al=powerlaw.Fit(cn)
   alpha[j]=al.alpha; print al.alpha;
   xmin[j]=al.xmin; print al.xmin


for j in range(len(a)):
   filename='cn'+str(a[j])+'.txt'
   fil = open(filename,'r')
   cn = fil.readlines()
   fil.close()
   for i in range(nodes):
      cn[i]=int(cn[i]);
   al=powerlaw.Fit(cn, xmin=1000, xmax=10000)
   alpha100[j]=al.alpha; print al.alpha;




