clc, clear, close all
d = readmatrix('data10_21.txt'); d(isnan(d))=0;
d=nonzeros(d)'; %按照列顺序提出矩阵d中的非零元素,再化成行向量
cities={'1.阿伯瑞斯吹','2.布莱顿','3.卡里斯尔','4.多佛','5.爱塞特',...
'6.格拉斯哥','7.赫尔','8.印威内斯','9.里兹','10.伦敦',...
'11.纽加塞耳','12.挪利其'}  %构造细胞数组
[y,eigvals]=cmdscale(d)   %求经典解
plot(y(:,1),y(:,2),'o','Color','k','LineWidth',1.5)   %画出点的坐标
text(y(:,1)-18,y(:,2)-12,cities); %对点进行标注
