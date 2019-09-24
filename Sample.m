RGB = imread('strawberry.jpg');     %image read
imshow(RGB)                     %image show
title('original');
I = rgb2gray(RGB);              %�摜��J���[�}�b�v���O���[�X�P�[���ɕϊ�
figure;                         %���ꂪ�Ȃ��Ɖ摜���㏑������遨�Ȃ��ƑO�̉摜�͌���Ȃ�
imshow(I)
title('grayscale');
                   %�������A��l���A�֊s���o�Aroi

J = imgaussfilt(I, 3);     %�ڂ��� �������傫���قǂڂ₯��
figure;
imshow(J)
title('smoothing');
BW = imbinarize(J,0.3);         %�Q�l�� 1���傫���ƑS����
figure;
imshow(BW)
title('binarization');
edge = bwperim(BW,4);           %�֊s���o
figure;
imshow(edge)
title('contour extraction');
e = imclearborder(edge,8);
figure;
imshowpair(edge,e,'montage')

trim = imcrop(RGB,[100 200 200 200])
imshow(trim)

hjchvjdsv
       