import QtQuick 6.0
import QtQuick.Controls	6.0
import QtQuick.Controls.Material 6.0
import QtQuick.Layouts 6.0

// only if you are running ui from qml command
//import "qml" // if you are compiling then leave this alone

ApplicationWindow {
    visible: true	
    width: 800
    height: 600
    title: "TubeFetchr"
	
    Material.theme: Material.Dark
	
	Rectangle {
		id: main
		color: "transparent"
		anchors.fill: parent

		StackLayout{
			id: stack_layout
			anchors.fill: parent
			currentIndex: 0
			
			HomeScreen {
				id: home_screen
			}
			SingleDownloadScreen {
				id: single_download_screen
			}
		}
		
	}
}
