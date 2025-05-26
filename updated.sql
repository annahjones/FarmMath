-- 1. Enable UUID extension
create extension if not exists "uuid-ossp";

-- 2. Create Farmers Table
create table if not exists farmers (
  id uuid primary key default uuid_generate_v4(),
  name varchar(100) not null,
  phone varchar(15) unique not null,
  location varchar(255),
  created_at timestamp default current_timestamp
);

-- 3. Create Crops Table
create table if not exists crops (
  id uuid primary key default uuid_generate_v4(),
  name varchar(100) unique not null
);

-- 4. Create Produce Posts Table
create table if not exists produce_posts (
  id uuid primary key default uuid_generate_v4(),
  farmer_id uuid not null,
  crop_id uuid not null,
  quantity integer not null,
  expected_price numeric(10,2) not null,
  location varchar(255),
  created_at timestamp default current_timestamp,
  constraint fk_farmer foreign key (farmer_id) references farmers(id) on delete cascade,
  constraint fk_crop foreign key (crop_id) references crops(id) on delete cascade
);

-- 5. Create Buyers Table
create table if not exists buyers (
  id uuid primary key default uuid_generate_v4(),
  name varchar(100),
  phone varchar(15),
  location varchar(255)
);

-- 6. Create Notifications Table
create table if not exists notifications (
  id uuid primary key default uuid_generate_v4(),
  farmer_id uuid references farmers(id),
  message text,
  read boolean default false,
  created_at timestamp default current_timestamp
);

-- 7. Insert Sample Crops
insert into crops (name) values
('Maize'),
('Wheat'),
('Beans'),
('Tomatoes'),
('Potatoes')
on conflict do nothing;

-- 8. Enable Row Level Security (RLS)
alter table farmers enable row level security;
alter table crops enable row level security;
alter table produce_posts enable row level security;

-- 9. Create Policies for FARMERS
create policy "Public can insert farmers"
on farmers
for insert
to public
using (true)
with check (true);

create policy "Public can select farmers"
on farmers
for select
to public
using (true);

-- 10. Create Policies for CROPS
create policy "Public can select crops"
on crops
for select
to public
using (true);

-- 11. Create Policies for PRODUCE_POSTS
create policy "Public can insert produce"
on produce_posts
for insert
to public
using (true)
with check (true);
