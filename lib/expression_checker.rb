require_relative 'delimeter'

class ExpressionChecker
  include Delimeter

  def balanced?(es)
    es.gsub!(Paired, "".freeze) while es =~ Paired
    es !~ Delimiter
  end
end