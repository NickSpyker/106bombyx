#!/usr/bin/env ruby

def seq_function argv

    x = argv[0].to_f
    i0 = argv[1].to_i
    i1 = argv[2].to_i
    y = 1

    while y <= 4
        i = 1
        while i < i0
            x = y * x * (1000 - x) / 1000
            if x < 0
                x = 0
            end
            i += 1
        end
        while i <= i1
            printf("%.2f %.2f\n", y, x);
            x = y * x * (1000 - x) / 1000
            i += 1
            if x < 0
                x = 0
            end
        end
        x = argv[0].to_f
        y += 0.01
    end

end
