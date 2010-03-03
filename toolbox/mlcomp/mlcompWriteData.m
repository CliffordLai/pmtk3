function mlcompWriteData(X, y, fname)


classification = isequal(y, round(y)); 
[n, d] = size(X);
fid = fopen(fname, 'w');
for i=1:n
   if classification
      fprintf(fid, '%d ', y(i));
   else
      fprintf(fid, '%f ', y(i));
   end
   for j=1:d
       fprintf(fid, '%d:%f ', j, X(i, j));
   end
   fprintf(fid, '\n');
end
fclose(fid);



end