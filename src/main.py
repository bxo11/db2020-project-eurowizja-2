# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'eurowizja.ui'
#
# Created by: PyQt5 UI code generator 5.9.2
#
# WARNING! All changes made in this file will be lost!

import sql.test as api
from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtGui import QTextCursor




class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(709, 582)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.textEdit = QtWidgets.QTextEdit(self.centralwidget)
        self.textEdit.setGeometry(QtCore.QRect(10, 10, 501, 531))
        self.textEdit.setObjectName("textEdit")
        self.radioButtonAll = QtWidgets.QRadioButton(self.centralwidget)
        self.radioButtonAll.setGeometry(QtCore.QRect(520, 10, 100, 20))
        self.radioButtonAll.setObjectName("radioButtonAll")
        self.radioButtonWinner = QtWidgets.QRadioButton(self.centralwidget)
        self.radioButtonWinner.setGeometry(QtCore.QRect(520, 40, 100, 20))
        self.radioButtonWinner.setObjectName("radioButtonWinner")
        self.radioButtonTrio = QtWidgets.QRadioButton(self.centralwidget)
        self.radioButtonTrio.setGeometry(QtCore.QRect(520, 70, 100, 20))
        self.radioButtonTrio.setObjectName("radioButtonTrio")
        self.radioButtonPoints = QtWidgets.QRadioButton(self.centralwidget)
        self.radioButtonPoints.setGeometry(QtCore.QRect(520, 100, 100, 20))
        self.radioButtonPoints.setObjectName("radioButtonPoints")
        self.radioButtonCountries = QtWidgets.QRadioButton(self.centralwidget)
        self.radioButtonCountries.setGeometry(QtCore.QRect(520, 130, 100, 20))
        self.radioButtonCountries.setObjectName("radioButtonCountries")
        self.radioButtonSongsG = QtWidgets.QRadioButton(self.centralwidget)
        self.radioButtonSongsG.setGeometry(QtCore.QRect(520, 160, 121, 20))
        self.radioButtonSongsG.setObjectName("radioButtonSongsG")
        self.readButton = QtWidgets.QPushButton(self.centralwidget)
        self.readButton.setGeometry(QtCore.QRect(600, 80, 113, 32))
        self.readButton.setObjectName("readButton")
        self.lineEditArtist = QtWidgets.QLineEdit(self.centralwidget)
        self.lineEditArtist.setGeometry(QtCore.QRect(550, 200, 113, 21))
        self.lineEditArtist.setAlignment(QtCore.Qt.AlignCenter)
        self.lineEditArtist.setObjectName("lineEditArtist")
        self.addButton = QtWidgets.QPushButton(self.centralwidget)
        self.addButton.setGeometry(QtCore.QRect(550, 220, 113, 32))
        self.addButton.setObjectName("addButton")
        self.deleteButton = QtWidgets.QPushButton(self.centralwidget)
        self.deleteButton.setGeometry(QtCore.QRect(550, 250, 113, 32))
        self.deleteButton.setObjectName("deleteButton")
        self.lineEditCountry = QtWidgets.QLineEdit(self.centralwidget)
        self.lineEditCountry.setGeometry(QtCore.QRect(550, 280, 113, 21))
        self.lineEditCountry.setAlignment(QtCore.Qt.AlignCenter)
        self.lineEditCountry.setObjectName("lineEditCountry")
        self.lineEditPoints = QtWidgets.QLineEdit(self.centralwidget)
        self.lineEditPoints.setGeometry(QtCore.QRect(550, 310, 113, 21))
        self.lineEditPoints.setAlignment(QtCore.Qt.AlignCenter)
        self.lineEditPoints.setObjectName("lineEditPoints")
        self.pointsButton = QtWidgets.QPushButton(self.centralwidget)
        self.pointsButton.setGeometry(QtCore.QRect(550, 330, 113, 32))
        self.pointsButton.setObjectName("pointsButton")
        self.lineEditSongName = QtWidgets.QLineEdit(self.centralwidget)
        self.lineEditSongName.setGeometry(QtCore.QRect(550, 360, 113, 21))
        self.lineEditSongName.setAlignment(QtCore.Qt.AlignCenter)
        self.lineEditSongName.setObjectName("lineEditSongName")
        self.lineEditGendre = QtWidgets.QLineEdit(self.centralwidget)
        self.lineEditGendre.setGeometry(QtCore.QRect(550, 390, 113, 21))
        self.lineEditGendre.setAlignment(QtCore.Qt.AlignCenter)
        self.lineEditGendre.setObjectName("lineEditGendre")
        self.songButton = QtWidgets.QPushButton(self.centralwidget)
        self.songButton.setGeometry(QtCore.QRect(550, 410, 113, 32))
        self.songButton.setObjectName("songButton")
        self.lineEditOldName = QtWidgets.QLineEdit(self.centralwidget)
        self.lineEditOldName.setGeometry(QtCore.QRect(520, 450, 81, 21))
        self.lineEditOldName.setAlignment(QtCore.Qt.AlignCenter)
        self.lineEditOldName.setObjectName("lineEditOldName")
        self.lineEditOldSurname = QtWidgets.QLineEdit(self.centralwidget)
        self.lineEditOldSurname.setGeometry(QtCore.QRect(610, 450, 91, 21))
        self.lineEditOldSurname.setAlignment(QtCore.Qt.AlignCenter)
        self.lineEditOldSurname.setObjectName("lineEditOldSurname")
        self.lineEditNewName = QtWidgets.QLineEdit(self.centralwidget)
        self.lineEditNewName.setGeometry(QtCore.QRect(520, 480, 81, 21))
        self.lineEditNewName.setAlignment(QtCore.Qt.AlignCenter)
        self.lineEditNewName.setObjectName("lineEditNewName")
        self.lineEditNewSurmane = QtWidgets.QLineEdit(self.centralwidget)
        self.lineEditNewSurmane.setGeometry(QtCore.QRect(610, 480, 91, 21))
        self.lineEditNewSurmane.setAlignment(QtCore.Qt.AlignCenter)
        self.lineEditNewSurmane.setObjectName("lineEditNewSurmane")
        self.peopleDataButton = QtWidgets.QPushButton(self.centralwidget)
        self.peopleDataButton.setGeometry(QtCore.QRect(550, 500, 113, 32))
        self.peopleDataButton.setObjectName("peopleDataButton")
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 709, 22))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)
        
        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)
        
        self.readButton.clicked.connect(lambda:self.readButtonFun())
        self.addButton.clicked.connect(lambda:self.addButtonFun())
        self.deleteButton.clicked.connect(lambda:self.deleteButtonFun())
        self.pointsButton.clicked.connect(lambda:self.pointsButtonFun())
        self.songButton.clicked.connect(lambda:self.songButtonFun())
        self.peopleDataButton.clicked.connect(lambda:self.peopleDataButtonFun())
        
        
    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "MainWindow"))
        self.radioButtonAll.setText(_translate("MainWindow", "Everyone"))
        self.radioButtonWinner.setText(_translate("MainWindow", "Winner"))
        self.radioButtonTrio.setText(_translate("MainWindow", "Best Trio"))
        self.radioButtonPoints.setText(_translate("MainWindow", "Points"))
        self.radioButtonCountries.setText(_translate("MainWindow", "Countries"))
        self.radioButtonSongsG.setText(_translate("MainWindow", "Songs\' gendres"))
        self.readButton.setText(_translate("MainWindow", "Read"))
        self.lineEditArtist.setText(_translate("MainWindow", "Artist\' name"))
        self.addButton.setText(_translate("MainWindow", "Add artist"))
        self.deleteButton.setText(_translate("MainWindow", "Delete artist"))
        self.lineEditCountry.setText(_translate("MainWindow", "Country"))
        self.lineEditPoints.setText(_translate("MainWindow", "Points"))
        self.pointsButton.setText(_translate("MainWindow", "Update points"))
        self.lineEditSongName.setText(_translate("MainWindow", "Song name"))
        self.lineEditGendre.setText(_translate("MainWindow", "Gendre"))
        self.songButton.setText(_translate("MainWindow", "Update song"))
        self.lineEditOldName.setText(_translate("MainWindow", "Old name"))
        self.lineEditOldSurname.setText(_translate("MainWindow", "Old surname"))
        self.lineEditNewName.setText(_translate("MainWindow", "New name"))
        self.lineEditNewSurmane.setText(_translate("MainWindow", "New surname"))
        self.peopleDataButton.setText(_translate("MainWindow", "Update data"))
    
    
    
    def readButtonFun(self):
        self.textEdit.clear()
        text = ''
        
        
        if(self.radioButtonAll.isChecked()):
            dictio = api.execute("CALL readEveryone()")
            
            for i, elem in enumerate(dictio):
                text += str(i+1) +'. {:<33}'.format(elem['Name'] +' '+ elem['people.Name'] +' '+ elem['Surname']) + elem['songs.Name'] +' '+ elem['Gendre'] +' '+ elem['countries.Name'] + '\n'
            
            self.textEdit.insertPlainText(text)
            self.textEdit.moveCursor(QTextCursor.End)
        
        if(self.radioButtonWinner.isChecked()):
            dictio = api.execute("CALL readWinner()")
            text += "The winner:\n"
            text += dictio[0]['Name']
            
            self.textEdit.insertPlainText(text)
            self.textEdit.moveCursor(QTextCursor.End)
        
        if(self.radioButtonTrio.isChecked()):
            dictio = api.execute("CALL readBestTrio()")
            
            for i, elem in enumerate(dictio):
                text += str(i+1) + '. {:<25}'.format(elem['Name']) + str(elem['Score']) + '\n'
            
            self.textEdit.insertPlainText(text)
            self.textEdit.moveCursor(QTextCursor.End)
        
        
        if(self.radioButtonPoints.isChecked()):
            dictio = api.execute("CALL readPoints()")
            
            for i, elem in enumerate(dictio):
                text += str(i+1) +'. {:<20}'.format(elem['Name']) +' '+ str(elem['Score']) + '\n'
            
            self.textEdit.insertPlainText(text)
            self.textEdit.moveCursor(QTextCursor.End)
        
        if(self.radioButtonCountries.isChecked()):
            dictio = api.execute("CALL readCountries()")
            
            for i, elem in enumerate(dictio):
                text += str(i+1) + '. {:<25}'.format(elem['Name']) + str(elem['Ilosc_uczestnikow']) + '\n'
            
            self.textEdit.insertPlainText(text)
            self.textEdit.moveCursor(QTextCursor.End)
        
        if(self.radioButtonSongsG.isChecked()):
            dictio = api.execute("CALL readSongs()")
            
            for i, elem in enumerate(dictio):
                text += str(i+1) + '. {:<18}'.format(elem['Gendre']) + str(elem['ilosc_piosenek']) + '\n'
            
            self.textEdit.insertPlainText(text)
            self.textEdit.moveCursor(QTextCursor.End)
        
        
        
    def addButtonFun(self):
        self.textEdit.clear()
        name = str(self.lineEditArtist.text())
        country = str(self.lineEditCountry.text())
        
        query = "CALL addArtist('{}', '{}')".format(name, country)
        api.execute(query)
        
        
    def deleteButtonFun(self):
        self.textEdit.clear()
        name = str(self.lineEditArtist.text())
        
        query = "CALL deleteArtist('{}')".format(name)
        api.execute(query)
        
        
    def pointsButtonFun(self):
        self.textEdit.clear()
        name = str(self.lineEditArtist.text())
        score = str(self.lineEditPoints.text())
        
        query = "CALL updatePoints('{}', {})".format(name, score)
        api.execute(query)
        
        
    def songButtonFun(self):
        self.textEdit.clear()
        name = str(self.lineEditArtist.text())
        song_name = str(self.lineEditSongName.text())
        gendre = str(self.lineEditGendre.text())
        
        query = "CALL updateSongName('{}', '{}', '{}')".format(name, song_name, gendre)
        api.execute(query)
        
        
    def peopleDataButtonFun(self):
        self.textEdit.clear()
        old_name = str(self.lineEditOldName.text())
        old_surname = str(self.lineEditOldSurname.text())
        new_name = str(self.lineEditNewName.text())
        new_surname = str(self.lineEditNewSurname.text())
        
        query = "CALL updatePeopleData('Michela', 'Pace','Miche', 'Pac')".format(old_name, old_surname, new_name, new_surname)
        api.execute(query)
    



if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = Ui_MainWindow()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())
