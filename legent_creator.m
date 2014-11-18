function [ legent_label ] = legent_creator( direction, graph_title )
legent_labels_list = {'DOWN to UP', 'UP to DOWN', 'RIGHT to LEFT', 'LEFT to RIGHT'};


P1 = findstr(graph_title, 'P1');
P2 = findstr(graph_title, 'P2');
P3 = findstr(graph_title, 'P3');
P4 = findstr(graph_title, 'P4');


if ~isempty(P1) && strcmp(direction , 'forward')
    legent_label = legent_labels_list(1);
elseif ~isempty(P2)  && strcmp(direction , 'forward')
    legent_label = legent_labels_list(1);
elseif ~isempty(P3)  && strcmp(direction , 'forward')
    legent_label = legent_labels_list(3);
elseif ~isempty(P4)  && strcmp(direction , 'forward')
    legent_label = legent_labels_list(3);
elseif ~isempty(P1)  && strcmp(direction , 'backward')
    legent_label = legent_labels_list(2);
elseif ~isempty(P2)  && strcmp(direction , 'backward')
    legent_label = legent_labels_list(2);
elseif ~isempty(P3) && strcmp(direction , 'backward')
    legent_label = legent_labels_list(4);
elseif ~isempty(P4) && strcmp(direction , 'backward')
    legent_label = legent_labels_list(4);
else
    legent_label = 'Unkown';
end
        
end

