# public methods - can be invoked by any other object
#
# private methods - can only be invoked by internal methods
#
# protected methods - can only be invoked by internal methods or
# objects of the same class

# В Ruby public, protected и private — это модификаторы доступа для методов в классе.

# Public (публичные) методы:
# Доступны извне объекта.
# Могут быть вызваны из любого места, как изнутри самого объекта, так и извне.


# Protected (защищенные) методы:
# Не могут быть вызваны извне объекта, кроме случаев, когда объекты принадлежат одному классу или его подклассу.
# Методы, объявленные после protected, считаются защищенными.

