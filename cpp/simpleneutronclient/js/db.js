.pragma library

.import QtQuick.LocalStorage 2.12 as LS
.import SimpleNeutron.Network 1.0 as SN

function dbInit() {
    let db = LS.LocalStorage.openDatabaseSync("SimpleNeutron", "", "SimpleNeutron", 1000000);
    try {
        db.transaction(function (tx) {
            tx.executeSql('CREATE TABLE IF NOT EXISTS settings (id INTEGER PRIMARY KEY, key text, value text);');
        });
    } catch (err) {
        console.log("Error creating table in database: " + err);
    };
    SN.NetworkController.packageSize = parseInt(getPackageSize());
    SN.NetworkController.host = getHost();
    SN.NetworkController.port = parseInt(getPort());
    SN.NetworkController.testGenerator = getTestGenerator();
    SN.NetworkController.inputTrigger = getInputTrigger();
    SN.NetworkController.testSignalCount = getTestSignalCount();
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
    SN.NetworkController.host = host;
}

function getPort() {
    let result = readSettingsValue('port');
    if (!result) result = '22222'; // default
    return result;
}

function setPort(port) {
    setSettingsValue('port', port);
    SN.NetworkController.port = parseInt(port);
}

function getPackageSize() {
    let result = readSettingsValue('packageSize');
    if (!result) result = '4'; // default
    return result;
}

function setPackageSize(packageSize) {
    setSettingsValue('packageSize', packageSize);
    SN.NetworkController.packageSize = parseInt(packageSize); // set in network controller too
}

function getTestGenerator() {
    let result = readSettingsValue('testGenerator') === "true";
    if (!result) result = false; // default
    return result;
}

function setTestGenerator(testGenerator) {
    setSettingsValue('testGenerator', testGenerator.toString());
    SN.NetworkController.testGenerator = testGenerator; // set in network controller too
}

function getInputTrigger() {
    let result = readSettingsValue('inputTrigger') === "true";
    if (!result) result = false; // default
    return result;
}

function setInputTrigger(inputTrigger) {
    setSettingsValue('inputTrigger', inputTrigger.toString());
    SN.NetworkController.inputTrigger = inputTrigger; // set in network controller too
}

function getTestSignalCount() {
    let result = readSettingsValue('testSignalCount');
    if (!result) result = '1'; // default
    return result;
}

function setTestSignalCount(testSignalCount) {
    setSettingsValue('testSignalCount', testSignalCount);
    SN.NetworkController.testSignalCount = parseInt(testSignalCount);
}
