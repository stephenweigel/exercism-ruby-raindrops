require 'prime'

module Raindrops
  module_function

  def convert(number)
    primes = number.prime_division.flatten & [3, 5, 7]
    return number.to_s if primes.empty?

    primes.map do |p|
      case p
      when 3
        'Pling'
      when 5
        'Plang'
      when 7
        'Plong'
      end
    end.join
  end
end
