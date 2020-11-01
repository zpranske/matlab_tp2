function [time_sleep,mysleeprec] = crossings2sleep(times',crossings');
%
%time_sleep
time_sleep=[];
for x=0:length(times)/30-1
time_sleep(x+1)=(times(30*x+14)+times(30*x+16))/2;
end

%
sleep_start=find(crossings(1:end-4)==0&crossings(2:end-3)==0&crossings(3:end-2)==0&crossings(4:end-1)==0&crossings(5:end)==0); %find all times start sleeping
asleep=zeros(size(times)); 
asleep(sleep_start'+[0;1;2;3;4])=1; %1 indicates time that is sleeping

%
mysleepprec=[];
for x=0:length(times)/30-1
mysleepprec(x+1)=sum(asleep(30*x+1:30*x+30)==1);
end


end

