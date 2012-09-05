#!/usr/bin/env ruby
# encoding : utf-8
require 'pp'
# MyClassを定義する
class MyClass
  # MyClassにmy_methodというインスタンスメソッドを定義する
  def my_method
    # このインスタンスメソッド内で@vというインスタンス変数を定義する
    # インスタンス変数はオブジェクトごとに固有
    # つまりnewするたびに増え、他のオブジェクトに影響されない
    @v = 4
  end
end

# MyClassとはなにか？
p MyClass.class #=> classである
# 親は？
p MyClass.superclass #=> Objectである

# 定義されているインスタンスメソッドは？
p MyClass.instance_methods # => [:my_method, :nil?, :===, :=~, :!~, :eql?, :hash, :<=>, :class, :singleton_class, :clone, :dup, :initialize_dup, :initialize_clone, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :freeze, :frozen?, :to_s, :inspect, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :respond_to_missing?, :extend, :display, :method, :public_method, :define_singleton_method, :object_id, :to_enum, :enum_for, :==, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]

# my_methodもちゃんと定義されているのがわかる
p MyClass.instance_methods.grep(/my/) # => [:my_method]

# MyClassのクラスメソッドは？
# つまり
# MyClass.hoge
# とかけるものは？
p MyClass.methods # => [:allocate, :new, :superclass, :freeze, :===, :==, :<=>, :<, :<=, :>, :>=, :to_s, :included_modules, :include?, :name, :ancestors, :instance_methods, :public_instance_methods, :protected_instance_methods, :private_instance_methods, :constants, :const_get, :const_set, :const_defined?, :const_missing, :class_variables, :remove_class_variable, :class_variable_get, :class_variable_set, :class_variable_defined?, :public_constant, :private_constant, :module_exec, :class_exec, :module_eval, :class_eval, :method_defined?, :public_method_defined?, :private_method_defined?, :protected_method_defined?, :public_class_method, :private_class_method, :autoload, :autoload?, :instance_method, :public_instance_method, :nil?, :=~, :!~, :eql?, :hash, :class, :singleton_class, :clone, :dup, :initialize_dup, :initialize_clone, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :frozen?, :inspect, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :respond_to_missing?, :extend, :display, :method, :public_method, :define_singleton_method, :object_id, :to_enum, :enum_for, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]

# いくつか試してみよう
p MyClass.allocate
p MyClass.name
p MyClass.constants
p MyClass.dup
# p MyClass.my_method # => Ops!もちろんエラー

# newしてみる
p my = MyClass.new # => #<MyClass:0x007f93538b8650>
p my.my_method
p my.methods
# p my.instance_methods # => ERROR!

puts

p MyClass.methods.grep(/my/)
puts
p MyClass.instance_methods.grep(/my/)
obj = MyClass.new
p obj.class
p obj.methods
p MyClass.instance_methods
p obj.methods == MyClass.instance_methods
p MyClass.methods
p obj.instance_variables
p obj.my_method
p obj.methods
p obj.instance_variables
p obj.methods.grep(/my/)
p String.instance_methods == "abc".methods
p String.methods == "abc".methods
p String.instance_methods
p String.methods
p MyClass.instance_methods
p MyClass.methods
p MyClass.class
p MyClass.superclass
p MyClass.methods == MyClass.class.instance_methods
p Class.instance_methods == MyClass.class.instance_methods
p "hello".class
p String.class
puts
inherited = false
p Class.instance_methods(inherited)
p String.superclass
p Object.superclass
p BasicObject.superclass
p Class.superclass
p Module.superclass
puts
p Module.methods
p Object.methods
p BasicObject.methods
p BasicObject.instance_methods
