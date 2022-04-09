#!/usr/bin/env ruby

require_relative "include/my"

def check_nbr_of_args argv

    if argv.size < 2
        puts "Error: not enough arguments, try './106bombyx -h'."
        exit 84
    elsif argv.size > 3
        puts "Error: too many arguments, try './106bombyx -h'."
        exit 84
    end

end

def check_if_all_arguments_is_nbr argv

    argv.each do |arg|
        temp = arg.split(//)
        temp.each do |val|
            unless val.match(/[0-9]/) || val == '.'
                puts "Error: #{arg} is an invalid argument, try './106bombyx -h'."
                exit 84
            end
        end
    end
    temp = argv[0].split(//)
    temp.each do |val|
        unless val.match(/[0-9]/)
            puts "Error: #{argv[0]} must be an integer, try './106bombyx -h'."
            exit 84
        end
    end

end

def error_handling argv

    check_nbr_of_args(argv)
    check_if_all_arguments_is_nbr(argv)

    if argv.size == 2
        unless 1 <= argv[1].to_f && argv[1].to_f <= 4
            puts "Error: #{argv[1]} must be between [1 ; 4], try './106bombyx -h'."
            exit 84
        end
    end

    temp = argv
    transform_each_string_into_number(temp)
    temp.each do |arg|
        if arg < 0
            puts "Error: #{arg} must be positive, try './106bombyx -h'."
            exit 84
        end
    end

end
