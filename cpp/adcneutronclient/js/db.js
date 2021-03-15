.pragma library

.import QtQuick.LocalStorage 2.12 as LS
.import AdcNeutron.Network 1.0 as SN
.import Qt.labs.platform 1.1 as PF

function dbInit() {
    let db = LS.LocalStorage.openDatabaseSync("AdcNeutron", "", "AdcNeutron", 1000000);
    try {
        db.transaction(function (tx) {
            tx.executeSql('CREATE TABLE IF NOT EXISTS settings (id INTEGER PRIMARY KEY, key text, value text);');
        });
    } catch (err) {
        console.log("Error creating table in database: " + err);
    };
    SN.NetworkController.host = getHost();
    SN.NetworkController.port = parseInt(getPort());
    SN.NetworkController.inputTrigger = getInputTrigger();
    SN.NetworkController.storageLocation = getStorageLocation();
    SN.NetworkController.meanCount = parseInt(getMeanCount());
    SN.NetworkController.trigger = parseInt(getTrigger());
}

function dbGetHandle() {
    let db;
    try {
        db = LS.LocalStorage.openDatabaseSync("AdcNeutron", "", "AdcNeutron", 1000000);
    } catch (err) {
        console.log("Error opening database: " + err);
    }
    return db;
}

function readSettingsValue(value) {
    let result = '';
    let db = dbGetHandle();
    db.transaction(function (tx) {
        let results = tx.executeSql(
                    'SELECT * FROM settings');
        for (let i = 0; i < results.rows.length; i++) {
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
        let results = tx.executeSql('SELECT * FROM settings WHERE key=?', [key]);
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

function getInputTrigger() {
    let result = readSettingsValue('inputTrigger') === "true";
    if (!result) result = false; // default
    return result;
}

function setInputTrigger(inputTrigger) {
    setSettingsValue('inputTrigger', inputTrigger.toString());
    SN.NetworkController.inputTrigger = inputTrigger; // set in network controller too
}

function getStorageLocation() {
    let result = readSettingsValue('storageLocation');
    if (!result) {
        let defaultPath = PF.StandardPaths.standardLocations(PF.StandardPaths.DownloadLocation)[0];
        defaultPath = defaultPath.toString();
        if (Qt.application.os === "windows") {
            defaultPath.replace("file:///", "");
        } else {
            defaultPath.replace("file://", "");
        }
        result = defaultPath;
    }
    return result;
}

function setStorageLocation(storageLocation) {
    setSettingsValue('storageLocation', storageLocation.toString());
    SN.NetworkController.storageLocation = storageLocation;
}

function getMeanCount() {
    let result = readSettingsValue('meanCount');
    if (!result) result = '250'; // default
    return result;
}

function setMeanCount(meanCount) {
    setSettingsValue('meanCount', meanCount);
    SN.NetworkController.meanCount = parseInt(meanCount);
}

function getTrigger() {
    let result = readSettingsValue('trigger');
    if (!result) result = '25'; // default
    return result;
}

function setTrigger(trigger) {
    setSettingsValue('trigger', trigger);
    SN.NetworkController.trigger = parseInt(trigger);
}
