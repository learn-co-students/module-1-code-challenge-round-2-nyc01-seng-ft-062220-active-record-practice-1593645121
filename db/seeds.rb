Employee.delete_all
Manager.delete_all
Department.delete_all
ManagerEmployee.delete_all

m1 = Manager.create(name: "Tashawn")
m2 = Manager.create(name: "Gabbie")
m3 = Manager.create(name: "Jeff")

d1 = Department.create(name: "Sales")
d2 = Department.create(name: "Marketing")
d3 = Department.create(name: "Accounting")

e1 = Employee.create(name: "Brianna", department:d1)
e2 = Employee.create(name: "Chett", department:d2)
e3 = Employee.create(name: "Caryn", department:d3)

me1 = ManagerEmployee.create(manager: m1, employee: e1)
me2 = ManagerEmployee.create(manager: m2, employee: e2)
me3 = ManagerEmployee.create(manager: m3, employee: e3)

puts "data loaded successfully"

#note rake is out of scope of the file. thus these variables cannot be called on rake console
