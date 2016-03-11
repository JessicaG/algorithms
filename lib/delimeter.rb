module Delimeter
  non_delimiters = /[^(){}\[\]]*/
  Paired = /\(#{non_delimiters}\)|\{#{non_delimiters}\}|\[#{non_delimiters}\]/
  Delimiter = /[(){}\[\]]/
end