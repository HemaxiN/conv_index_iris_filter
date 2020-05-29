
a = imread('C:\Users\hemaxi\Desktop\b.png');  
a = a(:,:,1);
a = imresize(a,[128,128], 'nearest'); 
N = 10; % filter size
[gx,gy,gradient_img] = compute_gradient(a);
radial_directions = iris_radial_directions(N);
conv_map = iris_filter(gradient_img, gx, gy, N,radial_directions);

figure;
imagesc(conv_map);
th = 0.3;
C = conv_map;
D = imregionalmax(C,8);
D = D.*(C>th*max(C(:)));
hold on
[i,j]=find(D);
plot(j,i,'.r')

#surface plot
figure;
surf(double(conv_map));
