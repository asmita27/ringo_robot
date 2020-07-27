
% data:(1283,14);

function [new_data] = clean_yposition(data)

new_data = zeros(1283,14);

new_data(1,:) = data(1,:);

%column : trial no. (14)
for i=1:length(data(1,:))
    
    %row : epoch (1283)
    for j=2:length(data(:,1))
         
        %low = new_data(j,i);
        
        if(data(j,i)>data(j-1,i)||data(j,i)>new_data(j-1,i))
            new_data(j,i)=new_data(j-1,i);
            
        else
            new_data(j,i)=data(j,i);
            
        end
        
    end
    
end
end
        
    