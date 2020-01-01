1;
%AUTHOR - FOLARANMI AKINOLA DAVIDSON
%------------------------------------
%
%QUADRIC SURFACES
%
%This octave mfile is a collection of functions written
%to generate plots of quadric surfaces. The surfaces generarated
%are specified by the parameters in the parametric equation
%of the respective surface.
%
%
%
% The surfaces included in this mscript are:
%
%A Cone
%
%A Sphere
%
%A Snail shell
%
%The Mobius Strip
%
%The klein bottle
%
%Enneper's Surface
%
%An ellipsoid
%
%Hyperboloid of one sheet
%
%Hyperboloid of two sheets
%
%The Lissajous Surface
%
%Whiney Umbrella
%
%Steiner's Surface
%
%The Pseudosphere
%
%Dini's Surface
%
%The helicoid
%
%Catenoid
%
%The torus
%
%An alien space ship
%
%Relevant info sbout quadric surfaces can be gotten from:
%https://www.poritz.net/jonathan/past_classes/spring14/ml/parametric.html
%


function fun1 = cone(radius)
thetav = linspace(0, 2*pi, 50)';
rv = linspace(0,radius,50)';
[r,theta]=meshgrid(rv,thetav);
x = r.*cos(theta);
y = r.*sin(theta);
z = r;
surface(x,y,z);
view(35,40);
xlabel('x-axis');
ylabel('y-axis');
zlabel('z-axis'); 
endfunction

function fun2 = sphere(radius)
  phiv = linspace(0,pi,50);
  thetav = linspace(0, 2*pi, 50);
  [phi,theta] = meshgrid(phiv,thetav);
  
  x = radius .* sin(phi) .* cos(theta);
  y = radius .* sin(phi) .* sin(theta);
  z = radius .* cos(phi);
  
  surface(x,y,z);
  view(35,40);
  xlabel('x-axis');
  ylabel('y-axis');
  zlabel('z-axis'); 
  
  
endfunction

function fun3 = snail_shell()
  u1 = 6*pi;
  v1 = 3*pi;
  
  uv = linspace(0,u1,60)';
  vv = linspace(0,v1,60)';
  
  [u,v] = meshgrid(uv,vv);
  
  x = 2 .* (1 - exp(u./(u1))) .* cos(u) .* (cos(v./2)).^2;
  y = 2 .* (-1 + exp(u./(u1))) .* sin(u) .* (cos(v./2)).^2;
  z = 1 - exp(u./v1) - sin(v) + (exp(u./v1).*sin(v));
  
  surface(x,y,z, 'EdgeColor','none');
  view(35,40);
  xlabel('x-axis');
  ylabel('y-axis');
  zlabel('z-axis'); 
endfunction

function fun4 = mobius_strip()
  
  u1 = 2*pi;
  v1 = 1;
  
  uv = linspace(0,u1,60)';
  vv = linspace(-1,v1,60)';
  
  [u,v] = meshgrid(uv,vv);
  
  x = (v./2) .* sin(u./2);
  y = (1 + (v./2) .* cos(u./2)) .* sin(u);
  z = (1 + (v./2) .* cos(u./2)) .* cos(u);
  
  surface(x,y,z);
  view(35,40);
  xlabel('x-axis');
  ylabel('y-axis');
  zlabel('z-axis'); 
endfunction

function fun5 = klein_bottle(radius)
  uv = linspace(0,2*pi,60)';
  vv = linspace(0,2*pi,60)';
  
  [u,v] = meshgrid(uv,vv);
  
  x = (radius + (cos(u./2).*sin(v)) - (sin(u./2).*sin(2*v))) .*cos(u);
  y = (radius + (cos(u./2).*sin(v)) - (sin(u./2).*sin(2*v))) .*sin(u);
  z = (sin(u./2).*sin(v)) + (cos(u./2).*sin(2*v));
  
  surface(x,y,z);
  view(35,40);
  xlabel('x-axis');
  ylabel('y-axis');
  zlabel('z-axis'); 
  
endfunction

function fun6 = enneper()
  uv = linspace(-1.5,1.5,60)';
  vv = linspace(-1.5,1.5,60)';
  
  [u,v] = meshgrid(uv,vv);
  
  x = u - ((u.^3)./3) + (u .* v.^2);
  y = v - ((v.^3)./3) + ((u .^2).*v);
  z = (u.^2) - (v.^2);
  
  surface(x,y,z);
  view(35,40);
  xlabel('x-axis');
  ylabel('y-axis');
  zlabel('z-axis'); 
  
endfunction
function fun7 = ellipsoid(a,b,c)
  uv = linspace(0,2*pi,60)';
  vv = linspace(0,pi,60)';
  
  [u,v] = meshgrid(uv,vv);
  
  x = a * cos(u) .* sin(v);
  y = b * sin(u) .* sin(v);
  z = c * cos(v);
  surface(x,y,z);
  view(35,40);
  xlabel('x-axis');
  ylabel('y-axis');
  zlabel('z-axis'); 
  axis equal
  
endfunction

function fun8 = hyperboloid_one(a,b,c)
  uv = linspace(-2,2,60)';
  vv = linspace(0,2*pi,60)';
  
  [u,v] = meshgrid(uv,vv);
  
  x = a * cosh(u) .* cos(v);
  y = b * cosh(u) .* sin(v);
  z = c * sinh(u);
  surface(x,y,z);
  view(35,40);
  xlabel('x-axis');
  ylabel('y-axis');
  zlabel('z-axis'); 
endfunction

function fun9 = hyperboloid_two(a,b,c)
  uv = linspace(-2,2,60)';
  vv = linspace(0,2*pi,60)';
  
  [u,v] = meshgrid(uv,vv);
  
  x = a * sinh(u) .* cos(v);
  y = b * sinh(u) .* sin(v);
  z = c * cosh(u);
  surface(x,y,z);
  view(35,40);
  xlabel('x-axis');
  ylabel('y-axis');
  zlabel('z-axis'); 
endfunction

function fun10 = lissajous_surface(a,b,c,d)
  uv = linspace(-pi,pi,60)';
  vv = linspace(-pi,pi,60)';
  
  [u,v] = meshgrid(uv,vv);
  
  x = sin(u);
  y = sin(v);
  z = sin((d - (a*u) - (b*v))./c);
  
  surface(x,y,z);
  view(35,40);
  xlabel('x-axis');
  ylabel('y-axis');
  zlabel('z-axis');
endfunction

function fun11 = whiney_umbrella()
  uv = linspace(-1,1,60)';
  vv = linspace(-1,1,60)';
  
  [u,v] = meshgrid(uv,vv);
  
  x = u.*v;
  y = u;
  z = v.^2;
  
  surface(x,y,z);
  view(35,40);
  xlabel('x-axis');
  ylabel('y-axis');
  zlabel('z-axis');
endfunction

function fun12 = steiner_surface()
  uv = linspace(0,pi,60)';
  vv = linspace(-pi/2,pi/2,60)';
  
  [u,v] = meshgrid(uv,vv);
  
  x = sin(2*u).*((cos(v)).^2);
  y = sin(u).*sin(2*v);
  z = cos(u).*sin(2*v);
  
  surface(x,y,z);
  view(35,40);
  xlabel('x-axis');
  ylabel('y-axis');
  zlabel('z-axis');
endfunction

function fun13 = pseudosphere()
  uv = linspace(0,2*pi,60)';
  vv = linspace(0,pi,60)';
  
  [u,v] = meshgrid(uv,vv);
  
  x = cos(u).*sin(v);
  y = sin(u).*sin(v);
  z = cos(v) + log(tan(v./2));
  
  surface(x,y,z);
  view(35,40);
  xlabel('x-axis');
  ylabel('y-axis');
  zlabel('z-axis');
endfunction

function fun14 = dini_surface(a)
  uv = linspace(0,2*pi,60)';
  vv = linspace(0,pi,60)';
  
  [u,v] = meshgrid(uv,vv);
  
  x = cos(u).*sin(v);
  y = sin(u).*sin(v);
  z = cos(v) + log(tan(v./2)) + (a*u);
  
  surface(x,y,z);
  view(35,40);
  xlabel('x-axis');
  ylabel('y-axis');
  zlabel('z-axis');
endfunction

function fun15 = helicoid(a,b,d)
  uv = linspace(0,2*pi,60)';
  vv = linspace(-d,d,60)';
  
  [u,v] = meshgrid(uv,vv);
  
  x = a*v.*cos(u);
  y = a*v.*sin(u);
  z = b*u;
  
  surface(x,y,z);
  view(35,40);
  xlabel('x-axis');
  ylabel('y-axis');
  zlabel('z-axis');
endfunction

function fun16 = catenoid(a,c)
  uv = linspace(0,2*pi,60)';
  vv = linspace(-c,c,60)';
  
  [u,v] = meshgrid(uv,vv);
  
  x = a*cos(u).*cosh(v./a);
  y = a*sin(u).*cosh(v./a);
  z = v;
  
  surface(x,y,z);
  view(35,40);
  xlabel('x-axis');
  ylabel('y-axis');
  zlabel('z-axis');
endfunction

function fun17 = torus(a,b)
  uv = linspace(0,2*pi,60)';
  vv = linspace(0,2*pi,60)';
  
  [u,v] = meshgrid(uv,vv);
  
  x = (a + (b*cos(v))).*cos(u);
  y = (a + (b*cos(v))).*sin(u);
  z = b*sin(v);
  
  surface(x,y,z);
  view(35,40);
  xlabel('x-axis');
  ylabel('y-axis');
  zlabel('z-axis');
endfunction

function fun18 = alien_space_ship(d)
  a = .4;
  uv = linspace(-13.4,13.4,60)';
  vv = linspace(-37.2,37.2,60)';
  
  [u,v] = meshgrid(uv,vv);
  w = sqrt(1 - a^2);
  
  x = -u + (2 * (w^2) * (cosh(a * u) .* sinh((a * u)./d)));
  y = 2 * w * cosh(a * u) .* ((-w * cos(v).*cos(w*v)) - (sin(v).*sin(w.*v)))./d;
  z = 2 * w * cosh(a * u) .* ((-w * sin(v).*cos(w*v)) + (cos(v).*sin(w.*v)))./d;
  
  surface(x,y,z);
  view(35,40);
  xlabel('x-axis');
  ylabel('y-axis');
  zlabel('z-axis');
endfunction

 