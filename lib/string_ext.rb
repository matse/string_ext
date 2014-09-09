# encoding: utf-8

require "string_ext/version"

module StringExt
  String.class_eval do
    def to_bool
      return true if self == true || self =~ (/\A(true|t|yes|y|1)\Z/i)
      return false if self == false || self.empty? || self =~ (/\A(false|f|no|n|0)\Z/i)
      raise ArgumentError.new("invalid value for Boolean: \"#{self}\"")
    end
  end

  String.class_eval do
    def is_numeric?
      Float(self) != nil rescue false
    end
  end

  String.class_eval do
    def to_url
      self.downcase.gsub(/[Ää]/, 'ae').gsub(/[Üü]/, 'ue').gsub(/[Öö]/, 'oe').gsub(/ |_/, '-').gsub(/ß/, 'ss').gsub(/[«»]/,'').gsub(/[^a-z0-9|^-]/,'')
    end
  end
end
