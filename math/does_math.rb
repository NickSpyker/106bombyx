#!/usr/bin/env ruby

require_relative "../include/my"

def does_math argv

    growth_function(argv) if argv.size == 2
    seq_function(argv) if argv.size == 3

end
