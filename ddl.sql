CREATE TABLE IF NOT EXISTS calendar (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    dia_do_ano INTEGER NOT NULL,
    ano INTEGER NOT NULL,
    data DATE NOT NULL,
    dia_da_semana INTEGER NOT NULL,
    nivel_jejum INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS feasts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_calendar INTEGER NOT NULL,
    categoria INTEGER NOT NULL,
    matinas TEXT,
    vesperas TEXT,
    vigilia TEXT,
    epistola TEXT,
    evangelho TEXT,
    troparion TEXT,
    scripture_ref TEXT,
    scripture_text TEXT,
    FOREIGN KEY (id_calendar) REFERENCES calendar(id)
);
