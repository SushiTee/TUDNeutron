.pragma library

.import QtQuick.LocalStorage 2.12 as LS

function dbInit() {
    let db = LS.LocalStorage.openDatabaseSync("SimpleNeutron", "", "SimpleNeutron", 1000000);
    try {
        db.transaction(function (tx) {
            tx.executeSql('CREATE TABLE IF NOT EXISTS settings (id INTEGER PRIMARY KEY, key text, value text);');
        });
    } catch (err) {
        console.log("Error creating table in database: " + err);
    };
}

function dbGetHandle() {
    let db;
    try {
        db = LS.LocalStorage.openDatabaseSync("SimpleNeutron", "", "SimpleNeutron", 1000000);
    } catch (err) {
        console.log("Error opening database: " + err);
    }
    return db;
}

function readSettingsValue(value) {
    let result = '';
    let db = dbGetHandle();
    db.transaction(function (tx) {
        var results = tx.executeSql(
                    'SELECT * FROM settings');
        for (var i = 0; i < results.rows.length; i++) {
            if (results.rows.item(i).key === value) {
                result = results.rows.item(i).value;
                return;
            }
        }
    });
    return result;
}

function setSettingsValue(key, value) {
    let db = dbGetHandle();
    db.transaction(function (tx) {
        var results = tx.executeSql('SELECT * FROM settings WHERE key=?', [key]);
        if (!results.rows.length) {
            // insert
            tx.executeSql('INSERT INTO settings(key, value) VALUES(?, ?)', [key, value]);
        } else {
            // update
            tx.executeSql('UPDATE settings set value=? WHERE key=?', [value, key]);
        }
    });
}

function getHost() {
    let result = readSettingsValue('host');
    if (!result) result = 'zedboard'; // default
    return result;
}

function setHost(host) {
    setSettingsValue('host', host);
}

function getPort() {
    let result = readSettingsValue('port');
    if (!result) result = '22222'; // default
    return result;
}

function setPort(port) {
    setSettingsValue('port', port);
}

function getPackageSize() {
    let result = readSettingsValue('packageSize');
    if (!result) result = '16'; // default
    return result;
}

function setPackageSize(packageSize) {
    setSettingsValue('packageSize', packageSize);
}
