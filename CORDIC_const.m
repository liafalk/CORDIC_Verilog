import java.lang.Integer java.lang.Float;


% Generate file containing lookup table, where n is the number of iterations 
n = 39;
% Initialization of tables of constants used by CORDIC
% need a table of arctangents of negative powers of two:
%angles = atan(2.^-(0:n)); %radians
angles = atand(2.^-(0:n)); %degrees

% and a table of products of reciprocal lengths of vectors [1, 2^-2j]:
%Kvalues = cumprod(1./abs(1 + 1j*2.^(-(0:n))));
%Kn = Kvalues(min(n, length(Kvalues)));

%Generate variable name using C code syntax
fid = fopen('anglesLUT_deg.mif', 'w');
fprintf(fid, 'WIDTH=32; DEPTH=64; ADDRESS_RADIX=UNS;DATA_RADIX=UNS;\n');

%% Write coefficients into file in double type
 fprintf(fid, 'CONTENT BEGIN \n');
 for i =1:n+1
    tmp = char(Integer.toBinaryString(Float.floatToIntBits(angles(i))));
    fprintf(fid, '%d : %s;\t--Angle:%.3f\n', i-1, tmp, angles(i));
    %fprintf(fid, '%d : ', i-1);
    %dlmwrite ('lookup_tbl.mif', angles(i), '-append');
    %fprintf(fid,'; \n'); 
 end
 fprintf(fid, '[40..63]: 0;\n');
 fprintf(fid, 'END;');
fclose(fid);
% 
%     fprintf(fid, 'double K[] = {');
%     dlmwrite ('lookup_tbl.txt', Kvalues, '-append', 'precision', 64);
%     fprintf(fid,'}; \n');