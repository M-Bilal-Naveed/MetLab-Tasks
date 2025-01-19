% Define image dimensions and initialize the matrix
A = 255 * ones(100, 100); 
Cx = 50; 
Cy = 50; 
radius = 20; 
for i = 1:100
    for j = 1:100
        if (Cx - i)^2 + (Cy - j)^2 <= radius^2
            A(i, j) = 0; % Set pixel value to black (0)
        end
    end
end
imshow(A, []);