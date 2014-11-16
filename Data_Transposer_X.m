function [ X ] = Data_Transposer_X( segment, no_of_elements_in_Y  )


X =  ones(1,no_of_elements_in_Y);

d = 0;
for i = 1:no_of_elements_in_Y
    d = d + segment;
    X(1,i) = d;
end


end

