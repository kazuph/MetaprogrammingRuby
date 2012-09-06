#!/usr/bin/env ruby
# coding : utf-8
# Mモジュールでmy_methodメソッドを定義
module M
  def my_method
    'M#my_method'
  end
end

# クラスCでモジュールMをインクルード
class C
  include M
end

# クラスDがクラスCを継承
class D < C
end

p D.new.my_method()
p D.ancestors # => [D, C, M, Object, Kernel, BasicObject]

# カーネルについて
p Kernel.private_instance_methods.grep(/^pr/)
