#include <iostream>
#include <QQmlApplicationEngine>
#include <QGuiApplication>
#include <QIcon>
#include <QObject>
#include <QUrl>
#include <QQmlContext>
#include "include/backend.hpp"

int main (int argc, char *argv[]) {
	QGuiApplication app(argc, argv);
	
	QQmlApplicationEngine engine;
	QQmlContext *root_context = engine.rootContext();

	Backend backend;
	root_context->setContextProperty("backend", &backend);

	engine.load(QUrl("qrc:qml/main.qml"));

	QList<QObject*> root_objects = engine.rootObjects();
	if (root_objects.isEmpty())
		return -1;

	// QObject *application_window = engine.rootObjects().value(0);
	// QObject::connect(&backend, SIGNAL(output_ready(QVariant)), application_window, SLOT(get_command_output(QVariant)));

	return app.exec();
}
