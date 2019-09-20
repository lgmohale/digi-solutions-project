 
 
--  CREATE TABLE (
--     career_id BIGSERIAL PRIMARY KEY NOT NULL,
--     career_name VARCHAR (150) NOT NULL
-- )

CREATE TABLE career(
    career_id BIGSERIAL PRIMARY KEY NOT NULL,
    career_name VARCHAR (150) NOT NULL
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
    university_name VARCHAR (150) NOT NULL,
    university_description text NOT NULL,
    website VARCHAR (150) NOT NULL,
    telephone VARCHAR (50) NOT NULL,
    email VARCHAR (150) NOT NULL,
    city VARCHAR (150) NOT NULL,
    province VARCHAR (150) NOT NULL,
    country VARCHAR (150) NOT NULL,
    faculty_id BIGINT REFERENCES faculty (faculty_id),
    UNIQUE (faculty_id)
);

-- possible careers
insert into career (career_name) values ('Librarian');
insert into career (career_name) values ('Internal Auditor');
insert into career (career_name) values ('Executive Secretary');
insert into career (career_name) values ('Quality Control Specialist');
insert into career (career_name) values ('Financial Analyst');
insert into career (career_name) values ('Director of Sales');
insert into career (career_name) values ('Senior Financial Analyst');

--Courses
insert into course (course_name, score) values ('Information Technology', '32');
insert into course (course_name, score) values ('BA DESIGN (COMMUNICATION DESIGN) ', '28');
insert into course (course_name, score) values ('ACCOUNTING (CA)', '33');
insert into course (course_name, score) values ('CHEMICAL ENGINEERING', '30');

--departments
insert into department (department_name) values ('Department of Business Management');
insert into department (department_name) values ('Finance and Investment Management');
insert into department (department_name) values ('Industrial Psychology and People Management');
insert into department (department_name) values ('Transport and Supply Chain Management');
insert into department (department_name) values ('Accountancy');
insert into department (department_name) values ('Commercial Accounting');
insert into department (department_name) values ('Applied Information Systems');
insert into department (department_name) values ('Information and Knowledge Management');
insert into department (department_name) values ('Marketing Management');
insert into department (department_name) values ('Economics And Econometrics');
insert into department (department_name) values ('Public Management and Governance');
insert into department (department_name) values ('School of Leadership');
insert into department (department_name) values ('School of Tourism and Hospitality');
insert into department (department_name) values ('Architecture');
insert into department (department_name) values ('Fashion Design');
insert into department (department_name) values ('Graphic Design');
insert into department (department_name) values ('Industrial Design');
insert into department (department_name) values ('Interior Design');
insert into department (department_name) values ('Jewellery Design and Manufacture');
insert into department (department_name) values ('Multimedia');
insert into department (department_name) values ('Visual Art​');
insert into department (department_name) values ('Childhood Education');
insert into department (department_name) values ('Education and Curriculum Studies');
insert into department (department_name) values ('Education Leadership and Management');
insert into department (department_name) values ('Educational Psychology');
insert into department (department_name) values (' Science and Technology Education(SCITECHED)');
insert into department (department_name) values ('Electrical Engineering and Electronic Engineering');
insert into department (department_name) values ('Civil Engineering and the Built Environment');
insert into department (department_name) values ('Mechanical and Industrial Engineering');
insert into department (department_name) values ('Mining, Metallurgy and Chemical Engineering');
insert into department (department_name) values ('Engineering Management');
insert into department (department_name) values ('Environmental Health');
insert into department (department_name) values ('Human Anatomy and Physiology');
insert into department (department_name) values ('Nursing');
insert into department (department_name) values ('Optometry');
insert into department (department_name) values ('Podiatry');
insert into department (department_name) values ('Emergency Medical Care');
insert into department (department_name) values ('Medical Imaging and Radiation Sciences (Radiography)');
insert into department (department_name) values ('Homoeopathy');
insert into department (department_name) values ('Sport and Movement Studies');
insert into department (department_name) values ('Somatology');
insert into department (department_name) values ('Chiropractic');
insert into department (department_name) values ('Biomedical Technology');
insert into department (department_name) values ('African Languages');
insert into department (department_name) values ('Greek and Latin Studies');
insert into department (department_name) values ('Afrikaans');
insert into department (department_name) values ('Historical Studies');
insert into department (department_name) values ('Anthropology and Development Studies');
insert into department (department_name) values ('Linguistics');
insert into department (department_name) values ('School of Communication');
insert into department (department_name) values ('Philosophy');
insert into department (department_name) values ('Communication Studies');
insert into department (department_name) values ('Politics and International Relations');
insert into department (department_name) values ('Strategic Communication');
insert into department (department_name) values ('Strategic Communication');
insert into department (department_name) values ('English');
insert into department (department_name) values ('Religion Studies');
insert into department (department_name) values ('French');
insert into department (department_name) values ('Social Work');
insert into department (department_name) values ('Journalism, Film and Television');
insert into department (department_name) values ('Department of Sociology');

--faculties
insert into faculty (faculty_name) values ('Art, Design and Architecture');
insert into faculty (faculty_name) values ('Economic and Financial Sciences');
insert into faculty (faculty_name) values ('Education');
insert into faculty (faculty_name) values ('Engineering and the Built Environment');
insert into faculty (faculty_name) values ('Health Sciences');
insert into faculty (faculty_name) values ('Humanities');
insert into faculty (faculty_name) values ('Law');
insert into faculty (faculty_name) values ('Management');
insert into faculty (faculty_name) values ('Science');

-- universities in south africa
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('Central University of Technology, Free State', 'consequat metus sapien ut nunc vestibulum ante', 'bpoag0@vkontakte.ru', '826-673-5578', 'shymas0@tinyurl.com', 'Viljoenskroon', 'Kruisfontein', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('Tshwane University of Technology', 'viverra diam vitae', 'wmcmurrugh1@devhub.com', '471-682-3324', 'shordle1@mtv.com', 'Oudtshoorn', 'Clanwilliam', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('University of South Africa', 'fringilla rhoncus mauris enim leo rhoncus sed', 'mkellegher2@nhs.uk', '467-299-0871', 'swythe2@people.com.cn', 'Creighton', 'Jan Kempdorp', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('University of the Free State', 'vivamus', 'adhooge3@odnoklassniki.ru', '822-346-1289', 'ctomas3@opensource.org', 'Newlands', 'Creighton', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('Tshwane University of Technology', 'ullamcorper augue a suscipit nulla elit ac nulla sed vel', 'lwinnister4@dion.ne.jp', '138-776-7622', 'adargie4@furl.net', 'Lydenburg', 'Flagstaff', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('Tshwane University of Technology', 'ut dolor morbi vel lectus', 'csoane5@google.nl', '678-528-5266', 'ndeyenhardt5@cargocollective.com', 'Saldanha', 'Bothaville', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('University of Stellenbosch', 'tellus', 'pbarkworth6@vimeo.com', '838-145-8483', 'hbockett6@webs.com', 'Uitenhage', 'Burgersfort', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('University of Witwatersrand', 'consequat lectus in est risus auctor sed tristique', 'dleverentz7@theguardian.com', '182-451-8132', 'rsetterthwait7@51.la', 'Jansenville', 'Zastron', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('University of Zululand', 'vestibulum ante ipsum primis in faucibus orci luctus', 'kcreigan8@alexa.com', '156-610-5930', 'ctoller8@themeforest.net', 'Flagstaff', 'Jeffrey’s Bay', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('University of the Free State', 'tempor convallis nulla neque libero convallis eget', 'jcorington9@angelfire.com', '395-498-0811', 'mdelgadillo9@dailymotion.com', 'Krugersdorp', 'Izingolweni', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('University of Johannesburg', 'et commodo vulputate justo in blandit ultrices enim lorem ipsum', 'hblanca@nba.com', '801-946-9831', 'kmoona@myspace.com', 'Empangeni', 'Orange Farm', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('University of Venda', 'porta volutpat', 'pmoortonb@free.fr', '350-172-1007', 'lconfordb@yolasite.com', 'Mossel Bay', 'Barkly East', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('University of North West', 'pulvinar lobortis est phasellus', 'cgummowc@princeton.edu', '990-972-2823', 'mbrundallc@apple.com', 'Thulamahashi', 'Moorreesburg', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('Vaal University of Technology', 'augue aliquam erat volutpat', 'mzapatad@spiegel.de', '379-290-8078', 'hmavend@toplist.cz', 'Pofadder', 'Ndwedwe', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('University of KwaZulu-Natal', 'adipiscing elit', 'pnolleaue@xinhuanet.com', '715-728-9183', 'estowgille@oracle.com', 'Postmasburg', 'Margate', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('University of South Africa', 'lorem ipsum dolor sit amet consectetuer', 'lguittonf@mit.edu', '997-935-5209', 'chowlef@auda.org.au', 'Trompsburg', 'Frankfort', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('University of Venda', 'nibh in hac habitasse platea dictumst aliquam augue', 'cmilazzog@people.com.cn', '130-666-6568', 'fkerfodg@fc2.com', 'Boshof', 'Kuruman', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('Tshwane University of Technology', 'pellentesque ultrices phasellus id sapien in', 'htowsonh@over-blog.com', '342-491-0782', 'tgilbaneh@xrea.com', 'Virginia', 'Ixopo', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('University of the Free State', 'curabitur gravida nisi', 'sspinasi@dot.gov', '167-922-2204', 'dmcgoldricki@twitter.com', 'Mokopane', 'Clanwilliam', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('Durban Institute of Technology', 'vitae nisl aenean lectus pellentesque eget nunc', 'twoodhamj@sogou.com', '802-410-8112', 'glondsdalej@rediff.com', 'East London', 'Virginia', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('University of Johannesburg', 'suscipit ligula in lacus curabitur at ipsum ac tellus semper', 'atriplettk@people.com.cn', '299-104-2511', 'abottelstonek@newyorker.com', 'Pretoria', 'Brits', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('University of Fort Hare', 'pulvinar sed nisl nunc rhoncus', 'cbirtlel@acquirethisname.com', '352-485-9870', 'asumnerl@studiopress.com', 'Roodepoort', 'Colesberg', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('Central University of Technology, Free State', 'at ipsum ac tellus semper interdum mauris', 'swiddowfieldm@indiatimes.com', '421-966-1624', 'ggamwellm@examiner.com', 'Koppies', 'Molteno', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('University of Witwatersrand', 'integer pede justo lacinia eget tincidunt eget', 'saskeyn@fastcompany.com', '878-141-0267', 'abinnionn@hud.gov', 'Warmbaths', 'Mtubatuba', 'South Africa');
insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('Tshwane University of Technology', 'felis fusce posuere felis sed lacus morbi sem', 'ckirao@mapy.cz', '318-907-1772', 'msteggleso@addtoany.com', 'Adelaide', 'Soweto', 'South Africa');
-- insert into university (university_name, university_description, website, telephone, email, city, province, country) values ('University of Witwatersrand', 'ut erat id mauris', 'peplatep@tripadvisor.com', '226-866-8259', 'cboichp@ehow.com', 'Himeville', 'Sasolburg', 'South Africa');