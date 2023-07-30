import QtQuick 6.0
import QtQuick.Controls	6.0
import QtQuick.Controls.Material 6.0
import Qt.labs.platform

Rectangle {
	color: "transparent"

	FolderDialog {
		id: path_dialog
		acceptLabel: "Select"
		rejectLabel: "Cancel"
		options: FolderDialog.ShowDirsOnly

		onAccepted: {
            var path = path_dialog.folder.toString();
            path = path.replace(/^(file:\/{3})/,"");

            path_entry.text = path
        }
	}

	Button {
		id: back_button
		text: "⟵ Back"
		font.family: "Helvetica"
		font.pointSize: 12.5
		flat: true

		onClicked: function() {
			stack_layout.currentIndex = 0;
		}
	}

	TextField {
        id: link_entry
        height: 52
        placeholderText: "Video Link"
        font.family: "Helvetica"
        font.pixelSize: 30
        wrapMode: Text.Wrap
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 100
        anchors.leftMargin: 100
        anchors.topMargin: 75

        Material.accent: Material.Cyan
    }
	
	TextField {
        id: path_entry
        height: 52
		readOnly: true
        placeholderText: "Download Location"
        font.family: "Helvetica"
        font.pixelSize: 30
        wrapMode: Text.Wrap
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: link_entry.bottom
        anchors.rightMargin: 100
        anchors.leftMargin: 100
        anchors.topMargin: 20

        Material.accent: Material.Cyan
		
		MouseArea {
            anchors.fill: parent
            onClicked: path_dialog.visible = true;
        }
    }
}
