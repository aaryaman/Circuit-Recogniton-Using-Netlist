fid=fopen('assumednetlist.txt','r');
R=0;C=0;H=0;v=0;
for oo=1:1:length(csvread('netlist.txt'))
pp=fgetl(fid);

    
    len=length(pp);
    numbers=(len-4);
   % fid2=fopen('creatingnetlist.txt','r');
    %label='svminput(pp(len))';
    label=pp(length(pp));
    if(label=='R')
        R=R+1;
        l=0;
        for i=1:2:numbers-2
            l=l+1;
            ha(l)=pp(4+i);
            %cha(i)='svminput(pp(4+i))';
           disp(ha(l)); 
        end
    
        

        fid2=fopen('creatingnetlist11.txt','a');
        if(length(ha)==3)
            fprintf(fid2,'\r\nR%d  %c %c %c%c%c',R,pp(1),pp(3),ha(1),ha(2),ha(3));      
        end
           if(length(ha)==4)
            fprintf(fid2,'\r\nR%d  %c %c %c%c%c%c',R,pp(1),pp(3),ha(1),ha(2),ha(3),ha(4));    
           end
            if(length(ha)==2)
            fprintf(fid2,'\r\nR%d  %c %c %c%c',R,pp(1),pp(3),ha(1),ha(2));    
          end
               if(length(ha)==5)
            fprintf(fid2,'\r\nR%d  %c %c %c%c%c%c%c',R,pp(1),pp(3),ha(1),ha(2),ha(3),ha(4),ha(5));    
               end
    
    
    
    
    fclose(fid2);
    end
    if(label=='F')
        C=C+1;
        l=0;
        for i=1:2:numbers-2
            l=l+1;
            ha(l)=pp(4+i);
            %cha(i)='svminput(pp(4+i))';
           disp(ha(l)); 
        end
    
        

        fid2=fopen('creatingnetlist11.txt','a');
        if(length(ha)==3)
            fprintf(fid2,'\r\nC%d  %c %c %c%c%c',C,pp(1),pp(3),ha(1),ha(2),ha(3));      
        end
           if(length(ha)==4)
            fprintf(fid2,'\r\nC%d  %c %c %c%c%c%c',C,pp(1),pp(3),ha(1),ha(2),ha(3),ha(4));    
           end
            if(length(ha)==2)
            fprintf(fid2,'\r\nC%d  %c %c %c%c',C,pp(1),pp(3),ha(1),ha(2));    
          end
               if(length(ha)==5)
            fprintf(fid2,'\r\nC%d  %c %c %c%c%c%c%c',C,pp(1),pp(3),ha(1),ha(2),ha(3),ha(4),ha(5));    
               end
    
    
    
    
    fclose(fid2);
    
  end

    if(label=='H')
        H=H+1;
        l=0;
        for i=1:2:numbers-2
            l=l+1;
            ha(l)=pp(4+i);
            %cha(i)='svminput(pp(4+i))';
           disp(ha(l)); 
        end
    
        

        fid2=fopen('creatingnetlist11.txt','a');
        if(length(ha)==3)
            fprintf(fid2,'\r\nL%d  %c %c %c%c%c',H,pp(1),pp(3),ha(1),ha(2),ha(3));      
        end
           if(length(ha)==4)
            fprintf(fid2,'\r\nL%d  %c %c %c%c%c%c',H,pp(1),pp(3),ha(1),ha(2),ha(3),ha(4));    
           end
            if(length(ha)==2)
            fprintf(fid2,'\r\nL%d  %c %c %c%c',H,pp(1),pp(3),ha(1),ha(2));    
          end
               if(length(ha)==5)
            fprintf(fid2,'\r\nL%d  %c %c %c%c%c%c%c',H,pp(1),pp(3),ha(1),ha(2),ha(3),ha(4),ha(5));    
               end
    
    
    
    
    fclose(fid2);
    
    
    
    
    
    
    
    
    
    
    end
    
if(label=='V')
        v=v+1;
        l=0;
        for i=1:2:numbers-2
            l=l+1;
            ha(l)=pp(4+i);
            %cha(i)='svminput(pp(4+i))';
           disp(ha(l)); 
        end
    
        

        fid2=fopen('creatingnetlist11.txt','a');
        if(length(ha)==3)
            fprintf(fid2,'\r\nVCC%d  %c %c %c%c%cV',v,pp(1),pp(3),ha(1),ha(2),ha(3));      
        end
           if(length(ha)==4)
            fprintf(fid2,'\r\nVCC%d  %c %c %c%c%c%cV',v,pp(1),pp(3),ha(1),ha(2),ha(3),ha(4));    
           end
            if(length(ha)==2)
            fprintf(fid2,'\r\nVCC%d  %c %c %c%cV',v,pp(1),pp(3),ha(1),ha(2));    
          end
               if(length(ha)==5)
            fprintf(fid2,'\r\nVCC%d  %c %c %c%c%c%c%cV',v,pp(1),pp(3),ha(1),ha(2),ha(3),ha(4),ha(5));    
               end
    
    
    
    
    fclose(fid2);
    
    
    
    
    
    
    
    
    
    
    end    
    
    
ha=0;    
end

fclose(fid);