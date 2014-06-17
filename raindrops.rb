require 'prime'

module Raindrops
  module_function

  def convert(number)
    primes = number.prime_division.flatten & [3, 5, 7]
    return number.to_s if primes.empty?

    primes.map do |p|
      response = ''
      response = 'Pling' if p == 3
      response = 'Plang' if p == 5
      response = 'Plong' if p == 7
      response
    end.join
  end
end
