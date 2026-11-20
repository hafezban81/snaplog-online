# SnapLog Online

Before/after photo reports for technicians. This page is the quick reference for the project: where things live and who manages them. Never put passwords or secret keys here.

## Links

| What | Where |
|---|---|
| Live app | https://snaplog.online |
| Code repo | https://github.com/hafezban81/snaplog-online |
| Domain | snaplog.online, bought from Cloudflare (about $4.99 a year) |
| Hosting | GitHub Pages, from the `main` branch of this repo |
| Database | Supabase project **"tech"**, organisation **hafezban81data** |
| Database address | https://bhhpyhocacoldqiaxdql.supabase.co |
| Photo storage | "photos" bucket in the same Supabase project |

## How it's set up

- The app is a single web page (`index.html`). Projects, items, photos, the activity log and WCF rates are stored in Supabase.
- Hosting: GitHub Pages serves the page; `CNAME` points it to snaplog.online.
- Changes go in through a branch and a pull request, merged to `main`. Each change bumps the version number at the top of `index.html`.
- Database changes are kept as SQL files in `sql/`.

## Accounts

- Each technician has their own login. There is one admin login.
- Accounts are created by the admin in Supabase for now.
- Planned: three locations (Sin Ming, Ang Mo Kio, Toa Payoh). People see only their own location by default; the admin can grant access to another location.

## Costs

- Target: running cost under $5 a month.
- Current: domain about $4.99 a year; Supabase on the free plan; GitHub Pages free.

## Open items

- Team page and location access (mockup only so far)
- Activity log in the app
- Password-change option for technicians
- Real WCF adjustment rates added to `snaplog_wcf_rates`
