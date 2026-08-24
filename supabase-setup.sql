-- Corre esto UNA VEZ en tu proyecto de Supabase:
-- Dashboard > SQL Editor > New query > pegar > Run

create table if not exists finanzas (
  user_id uuid primary key references auth.users(id) on delete cascade,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table finanzas enable row level security;

create policy "Los usuarios ven solo sus datos"
  on finanzas for select
  using (auth.uid() = user_id);

create policy "Los usuarios insertan solo sus datos"
  on finanzas for insert
  with check (auth.uid() = user_id);

create policy "Los usuarios actualizan solo sus datos"
  on finanzas for update
  using (auth.uid() = user_id);
