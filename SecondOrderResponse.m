function [zeta,wn] = SecondOrderResponse(PO,Ts)
    A=(log(PO/100))^2;
    zeta=sqrt(A/(pi^2+A));
    wn=4/(zeta*Ts);
end