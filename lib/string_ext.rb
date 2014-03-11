require "string_ext/version"

module StringExt
  String.class_eval do
    def to_bool
      return true if self == true || self =~ (/\A(true|t|yes|y|1)\Z/i)
      return false if self == false || self.empty? || self =~ (/\A(false|f|no|n|0)\Z/i)
      raise ArgumentError.new("invalid value for Boolean: \"#{self}\"")
    end
  end
end
