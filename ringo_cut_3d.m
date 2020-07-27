


function [cal_finalx,cal_finaly,cal_finalt] = ringo_cut_3d(data)

time_length = 1771;

cal_finalx = zeros(time_length,14);
cal_finaly = zeros(time_length,14);
cal_finalt = zeros(time_length,14);
fn = fieldnames(data.x_position);
i=1;

while i~= 15
    x1 = data.x_position.(fn{i});
    
    if(length(x1)>=time_length)
    x=x1-x1(1);
    
    cal_finalx(:,i) = x(1:time_length);
    
    y = data.y_position.(fn{i});
    cal_finaly(:,i) = y(1:time_length);
    
    t = data.time_series.(fn{i});
    cal_finalt(:,i) = t(1:time_length);
    
    i=i+1;
    
    else
    
        i=i+1;
        
    end
    
end
end