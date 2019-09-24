RGB = imread('strawberry.jpg');     %image read
imshow(RGB)                     %image show
title('original');
I = rgb2gray(RGB);              %画像やカラーマップをグレースケールに変換
figure;                         %これがないと画像が上書きされる→ないと前の画像は見れない
imshow(I)
title('grayscale');
                   %平滑化、二値化、輪郭抽出、roi

J = imgaussfilt(I, 3);     %ぼかし 数字が大きいほどぼやける
figure;
imshow(J)
title('smoothing');
BW = imbinarize(J,0.3);         %２値化 1より大きいと全部黒
figure;
imshow(BW)
title('binarization');
edge = bwperim(BW,4);           %輪郭抽出
figure;
imshow(edge)
title('contour extraction');
e = imclearborder(edge,8);
figure;
imshowpair(edge,e,'montage')

trim = imcrop(RGB,[100 200 200 200])
imshow(trim)

hjchvjdsv
       