CREATE TABLE career(
    career_id BIGSERIAL PRIMARY KEY NOT NULL,
    career_name VARCHAR (150) NOT NULL
    UNIQUE (career_name)
);

CREATE TABLE course(
    course_id BIGSERIAL PRIMARY KEY NOT NULL,
    course_name VARCHAR (150) NOT NULL,
    score VARCHAR (150) NOT NULL,
    career_id BIGINT REFERENCES career (career_id),
    UNIQUE (career_id)
);

CREATE TABLE department(
    department_id BIGSERIAL PRIMARY KEY NOT NULL,
    department_name VARCHAR (150) NOT NULL,
    course_id BIGINT REFERENCES course (course_id),
    UNIQUE (course_id)
);

CREATE TABLE faculty(
    faculty_id BIGSERIAL PRIMARY KEY NOT NULL,
    faculty_name VARCHAR (150) NOT NULL,
    department_id BIGINT REFERENCES department (department_id),
    UNIQUE (department_id)
);

CREATE TABLE university(
    university_id BIGSERIAL PRIMARY KEY NOT NULL,
    university_name VARCHAR (50) NOT NULL,
    website VARCHAR (150) NOT NULL,
    telephone VARCHAR (10) NOT NULL,
    email VARCHAR (150) NOT NULL,
    province VARCHAR (150) NOT NULL,
    country VARCHAR (150) NOT NULL,
    city VARCHAR (150) NOT NULL,
    faculty_id BIGINT REFERENCES faculty (faculty_id),
    UNIQUE (faculty_id)
);

-- possible careers
-- insert into career (career_name) values ('Librarian');
-- insert into career (career_name) values ('Internal Auditor');
-- insert into career (career_name) values ('Executive Secretary');
-- insert into career (career_name) values ('Quality Control Specialist');
-- insert into career (career_name) values ('Financial Analyst');
-- insert into career (career_name) values ('Director of Sales');
-- insert into career (career_name) values ('Senior Financial Analyst');
-- insert into career (career_name) values ('Food Chemist');
-- insert into career (career_name) values ('Associate Professor');
-- insert into career (career_name) values ('Occupational Therapist');
-- insert into career (career_name) values ('Director of Sales');
-- insert into career (career_name) values ('Junior Executive');
-- insert into career (career_name) values ('Developer');
-- insert into career (career_name) values ('Financial Advisor');
-- insert into career (career_name) values ('Structural Engineer');
-- insert into career (career_name) values ('Staff Accountant');
-- insert into career (career_name) values ('Statistician I');
-- insert into career (career_name) values ('Environmental Specialist');
-- insert into career (career_name) values ('Operator');
-- insert into career (career_name) values ('Actuary');
-- insert into career (career_name) values ('Research Nurse');
-- insert into career (career_name) values ('Human Resources Manager');
-- insert into career (career_name) values ('VP Sales');
-- insert into career (career_name) values ('Senior Financial Analyst');
-- insert into career (career_name) values ('Associate Professor');
-- insert into career (career_name) values ('Geologist I');
-- insert into career (career_name) values ('Computer Systems Analyst II');
-- insert into career (career_name) values ('Nurse');
-- insert into career (career_name) values ('Office Assistant I');
-- insert into career (career_name) values ('Automation Specialist I');
-- insert into career (career_name) values ('Structural Analysis Engineer');
-- insert into career (career_name) values ('VP Accounting');
-- insert into career (career_name) values ('Statistician I');
-- insert into career (career_name) values ('Pharmacist');
-- insert into career (career_name) values ('Technical Writer');
-- insert into career (career_name) values ('General Manager');
-- insert into career (career_name) values ('GIS Technical Architect');
-- insert into career (career_name) values ('Sales Representative');
-- insert into career (career_name) values ('Administrative Assistant III');
-- insert into career (career_name) values ('Junior Executive');
-- insert into career (career_name) values ('Data Coordiator');
-- insert into career (career_name) values ('Budget/Accounting Analyst IV');
-- insert into career (career_name) values ('Analog Circuit Design manager');
-- insert into career (career_name) values ('Registered Nurse');
-- insert into career (career_name) values ('VP Quality Control');
-- insert into career (career_name) values ('Marketing Assistant');
-- insert into career (career_name) values ('Chemical Engineer');
-- insert into career (career_name) values ('Legal Assistant');
-- insert into career (career_name) values ('Editor');
-- insert into career (career_name) values ('Associate Professor');
-- insert into career (career_name) values ('Professor');
-- insert into career (career_name) values ('Payment Adjustment Coordinator');
-- insert into career (career_name) values ('Executive Secretary');
-- insert into career (career_name) values ('Programmer Analyst II');
-- insert into career (career_name) values ('Geologist I');
-- insert into career (career_name) values ('Operator');
-- insert into career (career_name) values ('Nuclear Power Engineer');
-- insert into career (career_name) values ('Financial Advisor');
-- insert into career (career_name) values ('Developer II');
-- insert into career (career_name) values ('Assistant Manager');
-- insert into career (career_name) values ('Research Assistant II');
-- insert into career (career_name) values ('Health Coach III');
-- insert into career (career_name) values ('Information Systems Manager');
-- insert into career (career_name) values ('Analyst Programmer');
-- insert into career (career_name) values ('Occupational Therapist');
-- insert into career (career_name) values ('Financial Advisor');
-- insert into career (career_name) values ('Tax Accountant');
-- insert into career (career_name) values ('Programmer III');
-- insert into career (career_name) values ('Nurse');
-- insert into career (career_name) values ('Marketing Assistant');
-- insert into career (career_name) values ('Research Associate');
-- insert into career (career_name) values ('Assistant Media Planner');
-- insert into career (career_name) values ('Developer');
-- insert into career (career_name) values ('Mechanical Systems Engineer');
-- insert into career (career_name) values ('Senior Financial Analyst');
-- insert into career (career_name) values ('Quality Control Specialist');
-- insert into career (career_name) values ('Sales Representative');
-- insert into career (career_name) values ('Design Engineer');
-- insert into career (career_name) values ('VP Sales');
-- insert into career (career_name) values ('Business Systems Development Analyst');
-- insert into career (career_name) values ('Environmental Specialist');
-- insert into career (career_name) values ('Junior Executive');
-- insert into career (career_name) values ('Editor');
-- insert into career (career_name) values ('Account Representative');
-- insert into career (career_name) values ('Recruiter');
-- insert into career (career_name) values ('Media Manager IV');
-- insert into career (career_name) values ('Physical Therapy Assistant');
-- insert into career (career_name) values ('Engineer III');
-- insert into career (career_name) values ('Nuclear Power Engineer');
-- insert into career (career_name) values ('Health Coach I');



-- universities in south africa
-- insert into university (university_name, website, telephone, email, province, city, country) values ('Vaal University of Technology', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('Tshwane University of Technology', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('Durban Institute of Technology', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('University of Zululand', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('University of Stellenbosch', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('University of Stellenbosch', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('University of Johannesburg', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('Central University of Technology, Free State', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('University of Johannesburg', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('University of Venda', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('Vaal University of Technology', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('University of KwaZulu-Natal', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('University of Stellenbosch', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('University of the Free State', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('Tshwane University of Technology', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('Vaal University of Technology', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('Nelson Mandela Metropolitan University', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('University of KwaZulu-Natal', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('University of Limpopo', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('Durban Institute of Technology', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('University of Cape Town', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('University of Zululand', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('University of KwaZulu-Natal', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('University of Witwatersrand', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('Walter Sisulu University for Technology and Science', null, null, null, null, null, 'South Africa');
-- insert into university (university_name, website, telephone, email, province, city, country) values ('University of South Africa', null, null, null, null, null, 'South Africa');