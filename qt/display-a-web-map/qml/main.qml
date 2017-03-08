// Copyright 2017 ESRI
//
// All rights reserved under the copyright laws of the United States
// and applicable international laws, treaties, and conventions.
//
// You may freely redistribute and use this sample code, with or
// without modification, provided you include the original copyright
// notice and use restrictions.
//
// See the Sample code usage restrictions document for further information.
//
import QtQuick 2.6
import QtQuick.Controls 1.4
import Esri.ArcGISRuntime 100.0

ApplicationWindow {
    id: appWindow
    width: 800
    height: 600
    title: "Display-a-web-map"
    property string itemId: "41281c51f9de45edaf1c8ed44bb10e30"

    MapView {
        anchors.fill: parent
        wrapAroundMode: Enums.WrapAroundModeEnabledWhenSupported
        Map {
            initUrl: "https://www.arcgis.com/sharing/rest/content/items/" + itemId + "/data"
        }
    }
}
