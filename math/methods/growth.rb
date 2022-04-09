#!/usr/bin/env ruby

def growth_function argv

    x = argv[0].to_f
    y = argv[1]

    for i in 1 .. 100
        printf("%i %.2f\n", i, x);
        x = y * x * (1000 - x) / 1000
        if x < 0
            x = 0
        end
    end

end
