SELECT 'CREATE DATABASE ranasoftcraft_calendar' 
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'ranasoftcraft_calendar')\gexec