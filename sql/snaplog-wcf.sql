-- SnapLog: optional Work Completion Form (WCF). Run once in Supabase SQL Editor.
-- Adds optional JSON columns (nothing existing changes) and a rates table.

alter table snaplog_projects add column if not exists wcf jsonb;
alter table snaplog_items    add column if not exists wcf jsonb;

create table if not exists snaplog_wcf_rates (
  id             uuid primary key default gen_random_uuid(),
  work_type      text not null,          -- e.g. 'Building works', 'Electrical'
  adj_pct        numeric not null,       -- adjustment %, e.g. 25
  effective_from date not null,          -- rate applies to service dates from this day
  created_at     timestamptz default now()
);

alter table snaplog_wcf_rates enable row level security;

drop policy if exists "wcf rates read" on snaplog_wcf_rates;
create policy "wcf rates read" on snaplog_wcf_rates
  for select to authenticated using (true);

drop policy if exists "wcf rates admin write" on snaplog_wcf_rates;
create policy "wcf rates admin write" on snaplog_wcf_rates
  for all to authenticated using (snaplog_is_admin()) with check (snaplog_is_admin());

-- Add the real rates yourself (Table Editor, or SQL), for example:
-- insert into snaplog_wcf_rates (work_type, adj_pct, effective_from) values ('Building works', 25, '2026-01-01');
