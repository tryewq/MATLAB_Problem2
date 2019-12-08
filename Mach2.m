function Mach2 ()
%assigning values in the corresponding coordinates
disp('First Coordinates: ')
D1 = input('Coordinate X1: ');
E1 = input('Coordinate Y1: ');
disp('Second Coordinates: ')
D2 = input('Coordinate X2: ');
E2 = input('Coordinate Y2: ');
disp('Third Coordinates: ')
D3 = input('Coordinate X3: ');
E3 = input('Coordinate Y3: ');
F = 1; 

%equations to get the parameters of a circle
U = [2*D1, 2*E1, F; 2*D2, 2*E2 F; 2*D3 2*E3 F];
M1 = -((D1*D1)+(E1*E1)); M2 = -((D2*D2)+(E2*E2)); M3 = -((D3*D3)+(E3*E3));
V = [M1; M2; M3;];
a = U^-1*V;

D = a(1,1); 
E = a(2,1); 
F = a(3,1);

disp('Following are the parameters of the circle: ')
fprintf('Center (h,k): (%.2f, %.2f) \n',-D,-E)
fprintf('Radius, r: %.2f \n', sqrt((D)*(D)+(E)*(E)-F))
fprintf('Vector [D,E,F]: [%.2f, %.2f, %.2f] \n',D,E,F)