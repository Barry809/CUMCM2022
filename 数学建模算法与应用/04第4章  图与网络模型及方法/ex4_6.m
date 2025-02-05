clc, clear, close all
E = [1,2,6; 1,3,3; 1,4,1; 2,5,1; 3,2,2; 3,4,2; 4,6,10; 5,4,6
    5,6,4; 5,7,3; 5,8,6; 6,5,10; 6,7,2; 7,8,4; 9,5,2; 9,8,3];
G = digraph(E(:,1), E(:,2), E(:,3));
[path, d] = shortestpath(G, 1, 8, 'method','positive')
p = plot(G,'EdgeLabel',G.Edges.Weight,'Layout', 'circle');
highlight(p,path,'EdgeColor','r','LineWidth',1.5)

