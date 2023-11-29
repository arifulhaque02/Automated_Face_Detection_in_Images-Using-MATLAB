the_Image = imread('Ariful_Haque.jpeg');
[width, height] = size(the_Image);

if width > 320
    the_Image = imresize(the_Image, [320 NaN]);
end

face_Detector = vision.CascadeObjectDetector();

location_of_the_Face = step(face_Detector, the_Image);

detected_Image = insertShape(the_Image, 'Rectangle', location_of_the_Face);

figure;
imshow(detected_Image);
title('Detected Face');