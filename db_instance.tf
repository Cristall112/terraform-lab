resource "google_sql_database_instance" "instance" {
  name             = "mysql-db"
  region           = "us-central1"
  database_version = "MYSQL_8_0"
  settings {
    tier = "db-f1-micro"
  }

  deletion_protection  = "false"
  }

resource "google_sql_database_instance" "mysql_instance" {
  name         = "mysql-instance"
  region       = "europe-west10"
  database_version = "MYSQL_5_7"
  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database_instance" "postgres_instance" {
  name         = "postgres-instance"
  region       = "europe-west1"
  database_version = "POSTGRES_13"
  settings {
    tier = "db-f1-micro"
  }
}