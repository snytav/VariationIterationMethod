syms b t a;
y(1)=0.332*a^2/2;
for i=1:5
ya(i) = subs(y(i),a,t);
% yb(i) = subs(y(i),a,p);
y(i+1) = y(i)+1/2*int((ta)^2*(diff(ya(i),t,3)+b*ya(i)*diff(ya(i),t,2)),t,0,a);
end
sol=diff(y(i+1),a,2);
p = subs(sol,a,0);
