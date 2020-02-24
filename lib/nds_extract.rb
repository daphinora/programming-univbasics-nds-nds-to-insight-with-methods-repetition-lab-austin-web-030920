require 'pry'
$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
director_index = 0
list = []
 
 while director_index < source.length do
  list << source[director_index][:name]
  director_index += 1
 end
list
end

def total_gross(source)
  total = 0
  director_index = 0
 
  while director_index < source.length do
    director_name = list_of_directors(source[director_index])
    gross = directors_totals(source[director_index])
    
    total += director_name[gross]
    director_index += 1
  end
  total
end
  
  
  ##OKAY: go in for each director's total gross and add it to total. return total at the end of the method. they want you to use directors_totals and list_of_directors as first order methods.


  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use //???????? use whaT??//
  # Visit each key (i.e. director name), look up the value in the hash returned by directors_totals, and add it to a running total. When done, return the total //gross???//



