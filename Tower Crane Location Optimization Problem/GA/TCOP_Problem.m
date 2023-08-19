
function z = TCOP_Problem(x)

    global csikn;
global EmptyCell;
global dik;
global djk;
global Ws;
global Pn;
global Ln;
global Num;

  
    x = round(x);
    Ind = bi2de(x,'left-msb');
    
    if (Ind>=393600||Ind==0)
        Ind = 393600;
    end
    x = zeros(1,393600);
    E = EmptyCell{Ind};
for p = 1:(numel(EmptyCell))
    R = EmptyCell{p};
    
    if(R(1)==E(1)&&R(2)==E(2)&&R(3)==E(3))
        x(p) = 1;
    else
        x(p) = 0;
    end
end
                r = find(x);
                wx = x;
                num = x;
                wx(r) = Ws(1:end);
                num(r) = Num(1:end);
                
                
                
              
        
          Penalti  =  max(max(((dik .* x).* (wx)) - (Pn((E(1))).*x),0));
          Penalti1 =  max(max(((dik .* x)) - (Ln((E(1))).*x),0));
          Penalti2 =  max(max(((djk .* x).* (wx)) - (Pn((E(1))).*x),0));
          Penalti3 =  max(max(((djk .* x)) - (Ln((E(1))).*x),0));
          CSI = (csikn.*x).*num;

      z = sum(CSI)+(Penalti*10^3) +(Penalti1*10^2) + (Penalti2*10^2)+ (Penalti3*10^2);

      
 end