CREATE TABLE IF NOT EXISTS torrust_releases (
    torrent_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    uploader VARCHAR(32) NOT NULL,
    info_hash VARCHAR(20) UNIQUE,
    ipfs_hash VARCHAR(64) UNIQUE,
    title VARCHAR(256) NOT NULL,
    category_id INTEGER NOT NULL,
    description TEXT,
    upload_date INT(10) NOT NULL,
    file_size BIGINT NOT NULL,
    seeders INTEGER,
    leechers INTEGER,
    FOREIGN KEY(uploader) REFERENCES torrust_users(username) ON DELETE CASCADE,
    FOREIGN KEY(category_id) REFERENCES torrust_categories(category_id) ON DELETE CASCADE
)
