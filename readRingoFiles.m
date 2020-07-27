function [Take_circle,Motors_10sec,Calibration_straight] = readRingoFiles()

Take_circle = read_tables([1,3:18,22],"Take 2020-01-16 01.05.02 PM_");
Motors_10sec = read_tables([3,5:17],"motors 10 sec _");
Calibration_straight = read_tables([4:15,17,18],"Calibration Ground Plane_");


function [ST] = read_tables(range,prefix)
extension = ".csv";

i=1;
while i~=length(range)+1
    
    if range(i)<=9
        prefix2 = "00";
    else
        prefix2 = "0";
    end
    
    name = prefix + prefix2 + range(i) + extension + "";
    
    table = readtable(name);
    field_name = "Trial" + i;
    time = str2double(table{:,2});
    index = find(time==0);
    

    ST.time_series.(field_name) = str2double(table{index:length(time),2});
    ST.x_position.(field_name) = str2double(table{index:length(time),3});
    ST.y_position.(field_name) = str2double(table{index:length(time),4});
    
    i=i+1;
    
end


end

end
