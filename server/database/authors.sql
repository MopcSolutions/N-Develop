CREATE TABLE ndevelop.authors (
  ID INT NOT NULL,
  login VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  password VARCHAR(45) NOT NULL,
  PRIMARY KEY (ID));

-- select
select * from ndevelop.authors;

-- test data
insert into ndevelop.authors values (
  (select count(id)+1 from ndevelop.authors),
  'postmaster@test.com',
  'Adam Postmaster',
  '123456');
insert into ndevelop.authors values (
  (select count(id)+1 from ndevelop.authors),
  'webmaster@test.com',
  'Brian Webmaster',
  '654123');
insert into ndevelop.authors values (
  (select count(id)+1 from ndevelop.authors),
  'carl.benz@test.com',
  'Carl Benz',
  '3*3=9');
