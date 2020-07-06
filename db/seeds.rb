Employee.destroy_all
Manager.destroy_all
Department.destroy_all
ManagerEmployee.destroy_all

m1 = Manager.create(name: "Tashawn")
m2 = Manager.create(name: "Gabbie")
m3 = Manager.create(name: "Jeff")

d1 = Department.create(name: "Sales")
d2 = Department.create(name: "Marketing")
d3 = Department.create(name: "Accounting")

e1 = Employee.create(name: "Brianna", department:d1)
e2 = Employee.create(name: "Chett", department:d2)
e3 = Employee.create(name: "Caryn", department:d3)

ManagerEmployee.create(manager:m1, employee:e1)
ManagerEmployee.create(manager:m2, employee:e1)
ManagerEmployee.create(manager:m3, employee:e1)
ManagerEmployee.create(manager:m1, employee:e2)
ManagerEmployee.create(manager:m2, employee:e2)
ManagerEmployee.create(manager:m3, employee:e2)
ManagerEmployee.create(manager:m1, employee:e3)

s1 = Specialist.create(name:"Daniel")
s2 = Specialist.create(name:"Duke")
s3 = Specialist.create(name:"Peter")

CallLog.create(employee:e1, specialist:s1)
CallLog.create(employee:e2, specialist:s1)
CallLog.create(employee:e3, specialist:s1)
CallLog.create(employee:e1, specialist:s2)
CallLog.create(employee:e2, specialist:s2)
CallLog.create(employee:e3, specialist:s2)
CallLog.create(employee:e1, specialist:s3)
CallLog.create(employee:e2, specialist:s3)
CallLog.create(employee:e1, specialist:s3)
CallLog.create(employee:e1, specialist:s1)
