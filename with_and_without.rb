class WithoutMethod
end

class WithMethod
  def self.foo
    'foo'
  end
end

module ExtensionOne
  def foo
    "One"
  end
end

module ExtensionTwo
  def foo
    "Two #{super}"
  end
end

puts WithMethod.foo # foo
WithMethod.extend ExtensionOne
puts WithMethod.foo # foo
WithMethod.extend ExtensionTwo
puts WithMethod.foo # foo

WithoutMethod.extend ExtensionOne
puts WithoutMethod.foo
WithoutMethod.extend ExtensionTwo
puts WithoutMethod.foo
