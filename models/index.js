const Pool = require('pg').Pool
const pool = new Pool({
    user: 'admin',
    host: 'localhost',
    database: 'digidb',
    password: 'admin123',
    port: 5432,
})

module.exports = pool;