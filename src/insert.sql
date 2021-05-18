use student_manager;
insert into address(address_address) value
    ('ha noi'),
    ('ninh binh'),
    ('ha nam'),
    ('nghe an'),
    ('ha tinh');

insert into class(class_name, class_language, class_description) value
    ('lop 1','tieng viet','tap doc'),
    ('lop 2','tieng anh','tap noi'),
    ('lop 3','tieng trung','tap nghe'),
    ('lop 4','tieng viet','tap viet'),
    ('lop 5','tieng anh','tap doc');
 insert into students value
    (1,'dien van E',1,0337752555,1),
    (2,'dien van A',2,0337752556,1),
    (3,'dien van B',3,0337752557,2),
    (4,'dien van C',4,0337752558,2),
    (5,'dien van D',5,0337752559,3),
    (6,'dien van F',1,0337752560,3),
    (7,'dien van G',2,0337752561,4),
    (8,'dien van H',3,0337752562,4),
    (9,'dien van I',4,0337752563,5),
    (10,'dien van K',4,0337752564,5);
insert into course( course_language, course_description) value
    ('tieng anh','tap noi'),
    ('tieng viet','tap doc'),
    ('tieng trung','tap nghe'),
    ('tieng viet','tap viet'),
    ('tieng anh','tap doc');
insert into point(course_id, student_id, point) value
    (1,1,8),
    (2,1,9),
    (3,6,10),
    (4,6,7),
    (5,6,8),
#
    (1,2,6),
    (2,2,7),
    (3,7,8),
    (4,7,9),
    (5,7,10),
#
    (1,3,8),
    (2,3,9),
    (3,8,10),
    (4,8,7),
    (5,8,8),
#
    (1,4,8),
    (2,4,9),
    (3,9,10),
    (4,9,7),
    (5,9,8),
#
    (1,5,8),
    (2,5,9),
    (3,5,10),
    (4,10,7),
    (5,10,8);





