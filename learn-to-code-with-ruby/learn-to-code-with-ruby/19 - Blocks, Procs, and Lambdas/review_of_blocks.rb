# BLOCKS
#
# A block is a chunk of code to execute.
# An argument is an object we pass a method, while a block is a procedure
# A block cannot exist without a method.
# A block is a temporary construct.
#
# BLOCKS VS METHODS
#
# Methods can be invoked over and over. 
# A block is used only once, then disappears.
# Methods capture the repeatable steps of a procedure.
# A block captures the custom step of a procedure.

# Нужно понимать разницу, когда использовать блок кода, а когда писать свой метод

[1, 2, 3].each { |value| p value }
p [1, 2, 3].map { |value| value ** 2 } # [1, 4, 9]