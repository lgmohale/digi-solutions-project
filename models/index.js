const Pool = require('pg').Pool
const pool = new Pool({
    user: 'admin',
    host: 'localhost',
    database: 'db',
    password: 'admin123',
    port: 5432,
})

module.exports = pool;