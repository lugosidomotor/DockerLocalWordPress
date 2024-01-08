# 🚀 Run Existing WordPress Site Locally With Docker

## Overview 🌟
Easily set up a local development environment for your existing WordPress site using Docker. This solution is ideal for developing and testing in an environment that mirrors your live site.

## Requirements 🛠️
- Docker and Docker Compose installed.

## Containers 📦
1. **WordPress Container**: 
   - **Volumes**:
     - `site/wp-content`: Place your production `wp-content` folder here. It includes themes, plugins, uploads, etc. 🎨
     - `init/prep.sh`: Disables specific plugins and aligns `wp-content` ownership with the site. 🔒

   - **Auto-generated**: `wp-config.php`.

2. **Database (DB) Container**:
   - **Volumes**:
     - `database`: Stores MySQL files. 📁
     - `mysqldumps/backup.sql.gz`: Put your production database snapshot here. It's imported automatically on first run. 🔄
     - `init/migrate.sh`: URL migration script, runs automatically. 🌐

## Setup 🔧
1. **Clone/Download**: Get the project files. 👨‍💻
2. **Database Prep**: Create a `mysqldump` from your site, save as `mysqldumps/backup.sql.gz`. 🗃️
3. **Content Prep**: Copy `wp-content` from your site to `site/wp-content`. 📂
4. **Configuration**: Set variables in `.env`. 📝
5. **Run**: In the project root, execute:

```
docker-compose up -d && docker exec -ti wordpress '/prep.sh'
```

Access your site at `http://localhost` and the admin panel at `http://localhost/wp-admin`. 🌍

Enjoy a seamless and efficient development process for your WordPress site! 🎉
