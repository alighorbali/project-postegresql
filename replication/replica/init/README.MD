# 🛡️ PostgreSQL High Availability – Docker-Based Setup

This project demonstrates a basic High Availability PostgreSQL architecture using Docker, with one Primary and one Replica node in streaming replication.

---

## 📌 Architecture Overview

- **Primary Node**: Handles all write operations and is the source for replication.
- **Replica Node**: Continuously receives updates via streaming replication (read-only).
- **Custom Configuration**: Uses custom `postgresql.conf` and `pg_hba.conf` for replication.
- **Automation**: Init scripts for replication setup and data cloning.
- **Monitoring-ready**: Easily extensible with `pg_stat_replication` or a Python watcher.

📎 Architecture diagram:
![Architecture](./image/architecture_diagram.png)

---

## 🚀 How to Run

> 🛠️ Prerequisites: Docker Desktop (with WSL2 enabled)

1. Clone or download the project:

```bash
git clone <url>
cd project-postgresql
