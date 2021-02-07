function [x, y] = load_data(filename, period)

    data = load(filename);
    data = data.values;
    
    x = data.Sample * period;
    y = data.Curravg1 * 1000;

end

