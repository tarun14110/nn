function [ weights ] = train_dataset( dataset, rate )

    temp = size(dataset);
    msize = temp(1);
    %bias = ones(msize,1);

    data = dataset(:,1:3);

    % permutation to eliminate order dependencies
    data = data(randperm(size(data)),:);
    weights = zeros(1,3);

    for j=data',
        [ weights, diff, weights_alteration ] = train_point(weights, j', rate);
        disp('stuff');
        disp([ weights diff ]);
    end
    
end
