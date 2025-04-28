CREATE TABLE IF NOT EXISTS calendar (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    dia_do_ano INTEGER NOT NULL,
    ano INTEGER NOT NULL,
    data DATE NOT NULL,
    mes INTEGER NOT NULL,
    dia INTEGER NOT NULL,
    dia_da_semana INTEGER NOT NULL,
    nivel_jejum INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS feasts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    mes INTEGER NOT NULL,
    dia INTEGER NOT NULL,
    jurisdicao CHAR(1) NOT NULL, -- 'P' = Polonesa, 'G' = Grega
    categoria INTEGER NOT NULL,
    matinas TEXT NOT NULL DEFAULT '',
    vesperas TEXT NOT NULL DEFAULT '',
    vigilia TEXT NOT NULL DEFAULT '',
    epistola TEXT NOT NULL DEFAULT '',
    evangelho TEXT NOT NULL DEFAULT '',
    troparion TEXT NOT NULL DEFAULT '',
    scripture_ref TEXT NOT NULL DEFAULT '',
    scripture_text TEXT NOT NULL DEFAULT ''
);
