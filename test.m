A = [];
for i = 1:size(aa)
    a = table2array(aa(i,1));
    str1 = sprintf('./train/%d.jpg',a);
    exam(i).image =  str1;
    sizes = [table2array(aa(i,2)),table2array(aa(i,3)),table2array(aa(i,4))];
    exam(i).size =  sizes;
    x = [0,table2array(aa(i,5)),table2array(aa(i,6))];
    y =  [1,table2array(aa(i,7)),table2array(aa(i,8))];
    p = {[x;y]};
    exam(i).joints =p; 
end
save mydata exam;