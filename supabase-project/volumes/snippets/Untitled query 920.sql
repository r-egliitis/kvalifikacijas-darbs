CREATE SEQUENCE my_id_seq START 1;

CREATE TABLE my_table (
   id TEXT PRIMARY KEY DEFAULT
       'A' || LPAD(nextval('my_id_seq')::text, 6, '0'),
   name TEXT
);
