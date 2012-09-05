#!/usr/bin/env ruby
# coding : utf-8
module MyModule
  p MyConstant = '外部の定数'

  class MyClass
    p MyConstant = '内部の定数'
  end
  p MyConstant

end

module M
  class C
    p X = 'ある定数'
  end
  p C::X
end

p M::C::X
p M.constants
p Module.constants

puts

module M
  p Y = 'ある定数'
  class C
    p ::M::Y
    p Module.nesting
  end
end
