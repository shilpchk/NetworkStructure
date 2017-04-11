import random as r
import math
import pickle
from binsearch import binsearch

def lnfa(mu, sigma, m, perc, nodes):
   cn = [1,1]; ft=[]; fit =[];
   g = [[1],[0]];
   ft.append(r.lognormvariate(mu,sigma)); Fit = ft[0]; fit.append(Fit)
   ft.append(r.lognormvariate(mu,sigma)); Fit += ft[1]; fit.append(Fit)

   for j in range(2,1000):
      g.append([]); cn.append(m);
      for i in range(m):
         prob=r.uniform(0,Fit); n = binsearch(prob, fit, j);
         cn[n] += 1;
         g[n].append(j);
         g[j].append(n);
      ft.append(r.lognormvariate(mu,sigma)); Fit += ft[j]; fit.append(Fit)

   for j in range(1000, nodes):
      j
      #ssize = int(perc*j);
      ssize=1000;
      nn1=r.sample(xrange(0,j),ssize);
      fft=[]; ffit = []; FFit = 0;
      for i in range(0, ssize):
         fft.append(ft[nn1[i]]); FFit += fft[i]; ffit.append(FFit);
      g.append([]); cn.append(m);
      ft.append(r.lognormvariate(mu,sigma)); Fit += ft[j]; fit.append(Fit)
      for i in range(m):
         prob=r.uniform(0, FFit); n = binsearch(prob, ffit, ssize);
         cn[nn1[n]] += 1;
         g[nn1[n]].append(j);
         g[j].append(nn1[n]);

   return g, cn, ft


