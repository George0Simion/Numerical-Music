function [x, y] = parse_data(filename)
    fin = fopen(filename, 'r');
    n = fscanf(fin, '%d', 1);

    x = fscanf(fin, '%f', n+1);
    y = fscanf(fin, '%f', n+1);

    x = x';
    y = y';

    fclose(fin);
end