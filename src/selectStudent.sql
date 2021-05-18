use student_manager;

# hien thi so luong hoc vien tai casc tinh

select address_address as diachi,count(student_id) as soluong
from address
    inner join students s on address.address_id = s.address_id
group by address_address
order by address.address_id asc ;


# hien thi so hoc vien trong cac lop

select class_name as class_name,count(student_id) as soluong
from class
         inner join students s on class.class_id = s.class_id
group by class_name
order by class.class_id asc ;

#  hien thi gia tri trung binh casc mon hoc

select c.course_language as monhoc, avg(p.point)
from
     point as p
    inner join course c on p.course_id = c.course_id
group by c.course_language
order by c.course_id asc ;

# hien thi mon hoc co diem trung binh cao nhat

# select c.course_language, avg(p.point)
# from
#     course as c
#     inner join point p on c.course_id = p.course_id
# group by c.course_language
# order by c.course_id asc
# limit 1;


#
select course.course_language, Max(avg_point)
from
     course,
     (select avg(p.point) as avg_point
     from point p inner join course  c on p.course_id = c.course_id
     group by c.course_id )as nap;

#
# select c.course_language,  AVG(p.point)
# FROM course c join point as p on c.course_id = p.point_id
# GROUP BY c.course_id
# HAVING AVG(p.point) >= all(SELECT distinct AVG(p2.point) FROM point as p2 GROUP BY p2.point_id);