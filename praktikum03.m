% Praktikum 03 - Metode Numerik

clc;
clear;
pkg load symbolic

%% 1. Looping For
for i = 1:4
    p = i^2
end

%% 2. Looping While
p = 1;

while (p <= 5)
    q = p^2 + p
    p = p + 1;
end

%% 3. Continue
for i = 1:4
    if (i == 3)
        continue
    end
    p = i^2
end

%% 4. Diferensial
f = input('Masukkan bentuk persamaan f(x) = ');
f_asli = sym(f)
f_turunan = diff(f_asli, 'x')

%% 5. Integral
f = input('Masukkan bentuk persamaan f(x) = ');
f_asli = sym(f)
f_integral = int(f_asli, 'x')

%% 6. Function Dasar
func_dasar('Yujin')

%% 7. Function dengan Return
func_return('Jungwon')

%% 8. Function dengan Nilai Return
a = doubleit(5)

%% 9. Anonymous Function
squared = @(x) x.^2
squared(3)
squared(1:3)

%% 10. Grafik 2D - Contoh 1
x = 1:25:100;
y = x.^3 + 2*x.^2 - 40*x;
x,y
plot(x,y)

%% 11. Grafik 2D - Contoh 2
x = 0:1:100;
y = x.^3 + 2*x.^2 - 40*x;
x,y
plot(x,y)

%% 12. Grafik 2D dengan Label
x = linspace(0,20);
y = exp(-x/4).*sin(x);
plot(x,y)
xlabel('Sumbu X')
ylabel('Sumbu Y')
title('Grafik persamaan f(x)=exp(-x/4).*sin(x)')

%% 13. Grafik 2D Dua Kurva
x = 0:0.01:2*pi;
y = -10*sin(2*x) - 8*cos(3*x);
z = 8*sin(6*x).* -6.*cos(10*x);
plot(x,y,x,z)

%% 14. Grafik 3D
t = 0:0.1:6*pi;
x = sqrt(t).*sin(2*t);
y = sqrt(t).*cos(2*t);
z = 0.5*t;
plot3(x,y,z,'k','linewidth',1)
grid on
xlabel('x')
ylabel('y')

%% 15. Grafik Mesh
x = -7.3:0.5:7.5;
y = x;
[X,Y] = meshgrid(x,y);
R = sqrt(X.^2 + Y.^2);
Z = sin(R)./R;
mesh(X,Y,Z)

%% 16. Grafik Contour 3D
x = -3:0.25:3;
y = -3:0.25:3;
[X,Y] = meshgrid(x,y);
Z = 1.8.^(-1.5*sqrt(X.^2 + Y.^2)).*cos(0.5*Y).*sin(X);
contour3(X,Y,Z,15)
xlabel('x')
ylabel('y')
zlabel('z')

%% 17. Matriks / Meshgrid
x = [1, 2, 3];
y = [10, 20];
[X,Y] = meshgrid(x,y)
