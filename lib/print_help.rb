#!/usr/bin/env ruby

def print_help_if_needed argv

    if argv.size == 1
        if argv[0] == "-h"
            print (open "lib/help.txt").read
            exit 0
        end
    end

end
