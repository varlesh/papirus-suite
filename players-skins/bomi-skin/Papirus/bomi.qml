import QtQuick 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.0
import QtQuick.Controls.Styles 1.0
import bomi 1.0 as B

B.AppWithDock {
    id: app
    readonly property QtObject engine: B.App.engine
    property bool fs: B.App.window.fullscreen
    property var text: ""

    SystemPalette { id: palette }

    Component.onCompleted: {
        var orig = player.showOsdFunc
        player.showOsdFunc = function(msg) {
            osdTimer.running = false
            text.content = msg
            if (fs)
                orig(msg)
            osdTimer.running = true
        }
        text.content = engine.media.name
    }

    Timer {
        id: osdTimer; repeat: false
        interval: B.App.theme.osd.message.duration
        onTriggered: text.content = engine.media.name
    }

    Connections { target: engine.media; onNameChanged: text.content = target.name }

    bottomControls: Item {
        width: parent.width; height: top.height
        Rectangle {
            id: top
            width: parent.width; height: layout.height + 10
            anchors.bottom: bottom.top; color: palette.window
            RowLayout {
                id: layout; spacing: 5
                width: parent.width - (fs ? 10 : 0); height: implicitHeight
                anchors.verticalCenter: parent.verticalCenter
                MediaButton { icon: "media-skip-backward"; action: "play/prev" }
                MediaButton {
                    icon: "media-playback-" + (engine.playing ? "pause" : "start")
                    action: "play/play-pause"
                }
                MediaButton { icon: "media-playback-stop"; action: "play/stop" }
                MediaButton { icon: "media-skip-forward"; action: "play/next" }
                B.TimeSlider {
                    id: timeslider; Layout.fillWidth: true;
                    anchors.verticalCenter: parent.verticalCenter
                }
                 B.TimeDuration {
                height: parent.height;
                textStyle {
                    color: "#787879"
                    font.pixelSize: 12
                    }
                }
                MediaButton {icon: "kdenlive-show-audio"; action: "audio/volume/mute"; checkable: true; checked: engine.muted }

                B.VolumeSlider {
                    id: volumeslider; width: 80;
                    anchors.verticalCenter: parent.verticalCenter
                }

                MediaButton { icon: "folder-sound"; action: "audio/track" }

                MediaButton { icon: "media-view-subtitles"; action: "subtitle/track" }

                MediaButton {
                    icon: "view-" + (fs ? "restore" : "fullscreen")
                    action: "window/full"; checkable: true; checked: fs
                }

                Item { visible: fs; width: 5; Layout.fillHeight: true }
            }
            
        }
    }

    B.Text { id: fmt; visible: false }
}
