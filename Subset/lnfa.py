import random as r
import math
from binsearch import binsearch

def lognormdd(mu, sigma, m, nodes):
   cn = [2,2,2]; ft=[]; fit =[];
   g = [[1,2],[0,2],[0,1]];
   ft.append(r.lognormvariate(mu,sigma)); Fit = ft[0]; fit.append(Fit)
   ft.append(r.lognormvariate(mu,sigma)); Fit += ft[1]; fit.append(Fit)
   ft.append(r.lognormvariate(mu,sigma)); Fit += ft[2]; fit.append(Fit)

   for j in range(3,nodes):
      g.append([]); cn.append(m);
      for i in range(m):
         prob=r.uniform(0,Fit); n = binsearch(prob, fit, j);
         cn[n] += 1;   g[n].append(j);   g[j].append(n);
      ft.append(r.lognormvariate(mu,sigma)); Fit += ft[j]; fit.append(Fit)

   return g, cn, ft
