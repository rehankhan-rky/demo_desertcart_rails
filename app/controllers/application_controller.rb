class ApplicationController < ActionController::Base

  def reverse_string(string)
    puts reverse_string(string)
  end

  def timezone_converter
    input = "{\"time\":\"2022-06-17T05:52:39.787Z\"}"
    current_timezone = Time.zone
    converted_timezone = ActiveSupport::TimeZone[current_timezone].parse(input)
    puts converted_timezone
  end


  def fibonacci_sequence(n)
    alpha, beta = [0,1]
    (n-1).times do
      alpha,beta = beta, alpha + beta
    end
    return alpha
  end
end

