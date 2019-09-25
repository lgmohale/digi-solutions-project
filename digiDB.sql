CREATE TABLE university(
    university_id BIGSERIAL PRIMARY KEY NOT NULL,
    university_name VARCHAR (150) NOT NULL,
    university_rate VARCHAR (150) NOT NULL
);

CREATE TABLE course(
    course_id BIGSERIAL PRIMARY KEY NOT NULL,
    course_name VARCHAR (150) NOT NULL,
    course_rate VARCHAR (150) NOT NULL,
    aps VARCHAR (150) NOT NULL
);

CREATE TABLE userinformation(
    userinfor_id BIGSERIAL PRIMARY KEY NOT NULL,
    userinfor_name VARCHAR (150) NOT NULL,
    uuserinfor_surname VARCHAR (150) NOT NULL,
    userinfor_email VARCHAR (150) NOT NULL,
    userinfor_password VARCHAR (150) NOT NULL
);

CREATE TABLE schoolsubject(
    schoolSubject_id BIGSERIAL PRIMARY KEY NOT NULL,
    schoolSubject_name VARCHAR (150) NOT NULL
);

CREATE TABLE studyfield(
    studyField_id BIGSERIAL PRIMARY KEY NOT NULL,
    studyField_name VARCHAR (150) NOT NULL
);

CREATE TABLE logindetail(
    loginDetail_id BIGSERIAL PRIMARY KEY NOT NULL,
    loginDetail_email VARCHAR (150) NOT NULL,
    loginDetial_password VARCHAR (150) NOT NULL
);

-- Adding data into uversity table
INSERT INTO university (university_name, university_rate) VALUES ('University of Johannesburg', '5');
INSERT INTO university (university_name, university_rate) VALUES ('University of Pretoria', '7');
INSERT INTO university (university_name, university_rate) VALUES ('University of Cape Town', '9');

--Adding data into course table
INSERT INTO course (course_name, course_rate, aps) VALUES ('Business Information Technology', '20' ,'24');
INSERT INTO course (course_name, course_rate, aps) VALUES ('Computer Science', '40', '32');
INSERT INTO course (course_name, Course_rate, aps) VALUES ('Geology', '35', '30');

--Adding data into study field(studyfield)
insert into studyfield (studyField_name) values ('Business Management');
insert into studyfield (studyField_name) values ('Finance and Investment Management');
insert into studyfield (studyField_name) values ('Industrial Psychology and People Management');
insert into studyfield (studyField_name) values ('Transport and Supply Chain Management');
insert into studyfield (studyField_name) values ('Accountancy');
insert into studyfield (studyField_name) values ('Commercial Accounting');
insert into studyfield (studyField_name) values ('Applied Information Systems');
insert into studyfield (studyField_name) values ('Information and Knowledge Management');
insert into studyfield (studyField_name) values ('Marketing Management');
insert into studyfield (studyField_name) values ('Economics And Econometrics');
insert into studyfield (studyField_name) values ('Public Management and Governance');
insert into studyfield (studyField_name) values ('School of Leadership');
insert into studyfield (studyField_name) values ('School of Tourism and Hospitality');
insert into studyfield (studyField_name) values ('Architecture');