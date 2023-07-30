import QtQuick 6.0
import QtQuick.Controls	6.0
import QtQuick.Controls.Material 6.0

Rectangle {
	color: "transparent"

	Text {
		id: title
		text: "<font color='#EF9A9A'>Tube</font><font color='#FFFFFF'>Fetchr</font>"

		font.family: "Helvetica"
		font.bold: true
		font.italic: true
		font.pointSize: 100
		
		anchors.horizontalCenter: parent.horizontalCenter
	}

	Label {
		text: "Seamlessly Save YouTube Videos"
		
		font.family: "Helvetica"
		font.pointSize: 20

		anchors.horizontalCenter: parent.horizontalCenter

		Material.foreground: Material.Red
		
		anchors.top: title.bottom
		anchors.topMargin: 10
	}

	Button {
		id: single_download
		text: "Download Single Video"

		font.family: "Helvetica"
		font.pointSize: 20

		anchors.verticalCenter: parent.verticalCenter
		anchors.horizontalCenter: parent.horizontalCenter
	}

	Button {
		id: playlist_download
		text: "Download Playlist"

		font.family: "Helvetica"
		font.pointSize: 20

		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: single_download.bottom
		anchors.topMargin: 10
	}
}
