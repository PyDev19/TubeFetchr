import QtQuick 6.0
import QtQuick.Controls	6.0
import QtQuick.Controls.Material 6.0
import QtQuick.Layouts 6.0

import "."

ApplicationWindow {
    visible: true
	
    width: 800
    height: 600

    title: "Hello World"
	
    Material.theme: Material.Dark
	
	Rectangle {
		id: main
		
		anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
		anchors.right: parent.right
		anchors.bottomMargin: 0
        anchors.topMargin: 0
        anchors.leftMargin: 0
		anchors.rightMargin: 0
		
		color: "transparent"
		
		StackLayout{
			id: stack_layout
			
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.top: parent.top
			anchors.bottom: parent.bottom
			anchors.rightMargin: 0
			anchors.topMargin: 0
			anchors.leftMargin: 0
			anchors.bottomMargin: 0
			
			currentIndex: 0
			
			HomeScreen {
				id: home_screen
			}
		}
		
	}
}
