#!/usr/bin/env ruby

def transform_each_string_into_number argv

    for i in 0 .. (argv.size - 1)
        argv[i] = argv[i].to_i if i == 0
        argv[i] = argv[i].to_f unless i == 0
    end

end
