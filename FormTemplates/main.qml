import QtQuick
import QtQuick.Window
import QtQuick.Controls

import "components/Forms"

Window {
    width: 900
    height: 864
    visible: true
    title: qsTr("Tumpa Forms")

    onActiveFocusItemChanged: print(activeFocusItem)

    ListModel {
        id: keyTypeOptions
        ListElement { name: "Encryption subkey"; value: "encryption_subkey"; isChecked: true }
        ListElement { name: "Signing subkey"; value: "signing_subkey"; isChecked: true }
        ListElement { name: "Authentication subkey"; value: "authentication_subkey"; isChecked: false }
    }

    ListModel {
        id: keyAlgoOptions
        ListElement { text: "RSA"; value: "rsa" }
        ListElement { text: "Curve 25519"; value: "curve25519" }
    }

    Column {
        anchors.fill: parent
        anchors.margins: 15
        spacing: 30

        TextInputField {
            labelString: "Your Name:"
        }

        TextareaInputField {
            labelString: "Your Email(s):"
        }

        PasswordInputField {
            labelString: "Your password:"
        }

        CheckboxInputField {
            labelString: "Key type: "
            checkboxItems: keyTypeOptions
        }

        DropdownInputField {
            labelString: "Key Algorithm:"
            dropdownItems: keyAlgoOptions
        }
    }
}
