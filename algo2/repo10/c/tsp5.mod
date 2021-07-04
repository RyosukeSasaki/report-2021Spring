/* TSP, Traveling Salesman Problem */

/* Written in GNU MathProg by Andrew Makhorin <mao@gnu.org> */

/* The Traveling Salesman Problem (TSP) is stated as follows.
   Let a directed graph G = (V, E) be given, where V = {1, ..., n} is
   a set of nodes, E <= V x V is a set of arcs. Let also each arc
   e = (i,j) be assigned a number c[i,j], which is the length of the
   arc e. The problem is to find a closed path of minimal length going
   through each node of G exactly once. */

param n, integer, >= 3;
/* number of nodes */

set V := 1..n;
/* set of nodes */

set E, within V cross V;
/* set of arcs */

param c{(i,j) in E};
/* distance from node i to node j */

var x{(i,j) in E}, binary;
/* x[i,j] = 1 means that the salesman goes from node i to node j */

minimize total: sum{(i,j) in E} c[i,j] * x[i,j];
/* the objective is to make the path length as small as possible */

s.t. leave{i in V}: sum{(i,j) in E} x[i,j] = 1;
/* the salesman leaves each node i exactly once */

s.t. enter{j in V}: sum{(i,j) in E} x[i,j] = 1;
/* the salesman enters each node j exactly once */

/* Constraints above are not sufficient to describe valid tours, so we
   need to add constraints to eliminate subtours, i.e. tours which have
   disconnected components. Although there are many known ways to do
   that, I invented yet another way. The general idea is the following.
   Let the salesman sells, say, cars, starting the travel from node 1,
   where he has n cars. If we require the salesman to sell exactly one
   car in each node, he will need to go through all nodes to satisfy
   this requirement, thus, all subtours will be eliminated. */

var y{(i,j) in E}, >= 0;
/* y[i,j] is the number of cars, which the salesman has after leaving
   node i and before entering node j; in terms of the network analysis,
   y[i,j] is a flow through arc (i,j) */

s.t. cap{(i,j) in E}: y[i,j] <= (n-1) * x[i,j];
/* if arc (i,j) does not belong to the salesman's tour, its capacity
   must be zero; it is obvious that on leaving a node, it is sufficient
   to have not more than n-1 cars */

s.t. node{i in V}:
/* node[i] is a conservation constraint for node i */

      sum{(j,i) in E} y[j,i]
      /* summary flow into node i through all ingoing arcs */

      + (if i = 1 then n)
      /* plus n cars which the salesman has at starting node */

      = /* must be equal to */

      sum{(i,j) in E} y[i,j]
      /* summary flow from node i through all outgoing arcs */

      + 1;
      /* plus one car which the salesman sells at node i */

solve;

printf "Optimal tour has length %d\n",
   sum{(i,j) in E} c[i,j] * x[i,j];
printf("From node   To node   Distance\n");
printf{(i,j) in E: x[i,j]} "      %3d       %3d   %8g\n",
   i, j, c[i,j];

data;

/* The optimal solution is 40.773098 */

param n := 5;

param : E : c :=
       1    2     9.030228
       1    3     12.324669
       1    4     14.205464
       1    5     20.386549
       2    1     9.030228
       2    3     3.294441
       2    4     5.175236
       2    5     11.356321
       3    1     12.324669
       3    2     3.294441
       3    4     1.880795
       3    5     8.061880
       4    1     14.205464
       4    2     5.175236
       4    3     1.880795
       4    5     6.181085
       5    1     20.386549
       5    2     11.356321
       5    3     8.061880
       5    4     6.181085
;

end;
