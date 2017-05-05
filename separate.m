function separate
clear all
filename = uigetfile({'*.*'},'Select the Excel File');
prompt = 'Starting numbering at? ';
start = input(prompt);
data = xlsread(filename,'A:B');
data(end,:) = [];
duration = xlsread(filename,'C4:C4');
endnumber = floor(data(end,1)/duration);
[num txt info] = xlsread(filename,'C1:E9');

ofile = filename(1:find(filename == '_',1,'last'));

for i = 0:endnumber
    ofilename = [ofile num2str(start+i) '.xlsx'];
    odata = data((data(:,1)>=i*duration) & (data(:,1)<(i+1)*duration-10),:);
    odata(:,1) = odata(:,1) - i*duration;
    xlswrite(ofilename,odata);
    xlswrite(ofilename,info,'C1:E9');
end

end