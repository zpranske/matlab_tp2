function reject = isbadfly(times,crossings)
%
reject=0;
if isempty(find(crossings(1:end-4)==0&crossings(2:end-3)==0&crossings(3:end-2)==0&crossings(4:end-1)==0&crossings(5:end)==0,1))
    reject=1;
end

