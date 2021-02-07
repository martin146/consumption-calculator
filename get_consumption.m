function [cons_j, cons_wh] = get_consumption(x, y, start, stop, interval)

offset = round(start / interval);
end_val = round(stop / interval);

if (end_val > length(y))
    end_val = length(y);
end

lx = x(1 + offset:1:end_val);
ly = y(1 + offset:end_val);

cons_j = trapz(lx, ly) * 0.0033;
cons_wh = cons_j/3600;

end

