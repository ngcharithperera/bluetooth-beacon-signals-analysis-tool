function [ Y ] = Data_Transposer_Y( Raw_Data, no_of_elements_in_Y  )

Y =  ones(1,no_of_elements_in_Y);

for j = 1:no_of_elements_in_Y    
    Y(1,j) = Raw_Data{j};
end

end

