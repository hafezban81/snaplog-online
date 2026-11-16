-- ROLLBACK for the WCF feature. WARNING: this deletes all WCF data (rates and WCF fields).
-- Photos, projects and items are NOT affected.
alter table snaplog_projects drop column if exists wcf;
alter table snaplog_items    drop column if exists wcf;
drop table if exists snaplog_wcf_rates;
