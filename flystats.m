function [l,sd,sn] = flystats(time_sleep,mysleeprec)
%
daytime=[1:24,49:72,97:120];
sd=sum(mysleepprec(daytime));
nighttime=[25:48,73:96,121:144];
sn=sum(mysleepprec(nighttime));
lightoff=[25;73;121];
for x=1:size(lightoff)
l(x)=find(mysleepprec(lightoff(x):end)~=0,1,'first');
end

