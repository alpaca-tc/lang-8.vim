class Hash
  def to_fields(parent = nil)
    self.dup.each_with_object({}) do |(key, value), res|
      case value
      when Hash
        key = "#{parent}[#{key}]" if parent
        res.merge! value.to_fields(key)
      else
        key = "#{parent}[#{key}]" if parent
        res[key.to_sym] = value
      end
    end
  end
end
