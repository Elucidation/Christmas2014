function [r,c] = findTemplateInImage(img, tmp)

% Assumes images and templates are squares
img_size = size(img,1);
tmp_size = size(tmp,1);

%% Search for perfect match of template in image
for i = 1:img_size-tmp_size
    for j = 1:img_size-tmp_size
        %% All pixels must match
        if all(all(img(i:i+tmp_size-1,j:j+tmp_size-1) == tmp))
            %% Get location from index
            r = i;
            c = j;
            return;
        end        
    end
end

error('No template match found');
end