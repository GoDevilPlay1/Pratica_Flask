DROP TABLE IF EXISTS product;


CREATE TABLE product (

    id INTEGER PRIMARY KEY AUTOINCREMENT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    name TEXT NOT NULL,

    description TEXT,

    category TEXT NOT NULL,

    photo TEXT,

    status TEXT NOT NULL DEFAULT 'on'
        CHECK (status IN ('on', 'off', 'del'))

);