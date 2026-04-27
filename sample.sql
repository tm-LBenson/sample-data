drop table if exists products;

create table products (
  id bigint generated always as identity primary key,
  title text not null,
  description text,
  price numeric(10, 2) not null,
  inventory_count integer not null default 0,
  category text not null,
  is_active boolean not null default true,
  created_at timestamptz not null default now()
);

insert into products (title, description, price, inventory_count, category, is_active)
values
('Gaming Mouse', 'A wired mouse with extra buttons', 39.99, 25, 'electronics', true),
('Mechanical Keyboard', 'A keyboard with blue switches', 89.99, 12, 'electronics', true),
('USB-C Cable', 'A 6 foot charging cable', 12.99, 100, 'electronics', true),
('Water Bottle', 'A reusable stainless steel bottle', 19.99, 40, 'home', true),
('Notebook', 'A college ruled notebook', 4.99, 200, 'school', true),
('Backpack', 'A basic black backpack', 34.99, 15, 'school', true),
('Desk Lamp', 'A small LED desk lamp', 24.99, 8, 'home', true),
('Coffee Mug', 'A ceramic mug for coffee or tea', 9.99, 30, 'home', true),
('Pencil Pack', 'A pack of 12 pencils', 3.99, 150, 'school', true),
('Monitor Stand', 'A stand to raise your computer monitor', 29.99, 10, 'office', true),
('Sticky Notes', 'A pack of yellow sticky notes', 5.99, 75, 'office', true),
('Old Phone Case', 'A discontinued phone case', 7.99, 0, 'electronics', false);

select * from products;
