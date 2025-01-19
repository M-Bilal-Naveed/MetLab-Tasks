% Define image dimensions and initialize the matrix
A = 255 * ones(100, 100);

Cx = 50;
Cy = 50;
radius = 20;
for i = 1:100
    for j = 1:100
        if abs(Cx - i) + abs(Cy - j) <= radius
            A(i, j) = 0; % Set pixel value to black (0)
        end
    end
end

imshow(A, []);