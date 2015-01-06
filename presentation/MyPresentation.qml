//import Qt.labs.presentation 1.0
import QtQuick 2.2
import LatexPresentation 1.0
import QtQuick.Controls 1.1
import QtMultimedia 5.0
import QtGraphicalEffects 1.0
import "../qml"

TransitionPresentation
{
    id: presentation
    focus: true
    transitionTime: 500

    width: 800
    height: 600
    textColor: "black"

    RadialGradient {
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#FFFFFF" }
            GradientStop { position: 1.0; color: "#f7f2d3" }
        }
    }


    // -----------------------------------------------
    // -----------  First Slide-----------------------
    // -----------------------------------------------
    MultiSlide{
        UpperLeftSlide {
            id: firstSlide
            Heading {
                anchors {
                    verticalCenterOffset: -parent.height * 0.1
                }

                text: "qml presentation template\n (4 x screens)"
            }
            Text {
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height * 0.05
                font.family: firstSlide.titleFontFamily
                font.pixelSize: firstSlide._titleFontSize * 0.5
                lineHeight: 1.2
                horizontalAlignment: Text.Center
                wrapMode: Text.Wrap
                text: "Milad H. M. \nUniversity of Oslo, Computational Physics\nJanuary 2015"
            }
        }
        UpperRightSlide {
            BorderedImage {
                anchors.fill: parent
                source: "../../figures/md.png"
            }
        }
    }

    // -----------------------------------------------
    // -----------  text -----------------------------
    // -----------------------------------------------

    MultiSlide{
        UpperLeftSlide {
            Heading {
                anchors {
                    verticalCenterOffset: -parent.height * 0.1
                }
                text: "Quantum Mechanics"
            }
        }
        UpperRightSlide {
            title: "Quantum Mechanics"
        }
        LowerLeftSlide {
            centeredText: "Quantum Mechanics"

        }
        LowerRightSlide {
            id: textSlide
            Text {
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height * 0.05
                font.family: textSlide.titleFontFamily
                font.pixelSize: textSlide._titleFontSize * 0.5
                lineHeight: 1.2
                horizontalAlignment: Text.Center
                wrapMode: Text.Wrap
                text: "Quantum Mechanics"
            }
        }
    }

    // -----------------------------------------------
    // -----------  Latex ----------------------------
    // -----------------------------------------------

    MultiSlide{
        UpperLeftSlide {
            title: "Quantum Mechanics"
            Latex {
                width: parent.width * 0.4
                text: "$$i \\hbar \\frac{\\partial}{\\partial t}\\Psi= \\mathcal{H}\\Psi$$"
            }
        }

    }

    // -----------------------------------------------
    // -----------  text with delay I----------------
    // -----------------------------------------------

    MultiSlide{
        delayedContent: [
            UpperLeftSlide {
                Heading {
                    anchors {
                        verticalCenterOffset: -parent.height * 0.1
                    }

                    text: "Quantum Mechanics"
                }
            },
            UpperRightSlide {
                title: "Schrödinger Equation"
                Latex {
                    width: parent.width * 0.4
                    text: "$$i \\hbar \\frac{\\partial}{\\partial t}\\Psi= \\mathcal{H}\\Psi$$"
                }
            },
            LowerLeftSlide {
                title: "Hamiltonian"
                Latex {
                    width: parent.width
                    text: "\\begin{align*}
                            \\mathcal{H} &=
                            -\\sum_{i}^{N_e} \\frac{\\nabla_i^2 }{2}
                            -\\sum_{n}^{N_n} \\frac{\\nabla_n^2}{2M_n}
                            -\\sum_{n}^{N_n}\\sum_{i}^{N_e}\\frac{Z_n}{|{\\bf r}_i - {\\bf R}_n|}\\\\
                            &+ \\sum_{{i < j}}^{N_e} \\frac{1}{|{\\bf r}_i - {\\bf r}_j|}
                            -\\sum_{{n < m}}^{N_n} \\frac{Z_n Z_{m}}{|{\\bf R}_n - {\\bf R}_{m}|}
                            \\end{align*}"
                }
            },
            LowerRightSlide {
                title: "Wave Function"
                Latex {
                    width: parent.width * 0.4
                    text: "$$\\Psi\\left(\\{\\mathbf{R}_n\\}, \\{\\mathbf{r}_i\\}, t\\right)$$"
                }
            }
        ]
    }

    // -----------------------------------------------
    // -----------  text with delay II--------------
    // -----------------------------------------------

    MultiSlide{
        delayedContent: [
            Item{
                anchors.fill: parent
                UpperLeftSlide {
                    Heading {
                        anchors {
                            verticalCenterOffset: -parent.height * 0.1
                        }

                        text: "Quantum Mechanics"
                    }
                }
                UpperRightSlide {
                    title: "Schrödinger Equation"
                    Latex {
                        width: parent.width * 0.4
                        text: "$$i \\hbar \\frac{\\partial}{\\partial t}\\Psi= \\mathcal{H}\\Psi$$"
                    }
                }
            },
            Item{
                anchors.fill: parent
                LowerLeftSlide {
                    title: "Hamiltonian"
                    Latex {
                        width: parent.width
                        text: "\\begin{align*}
                            \\mathcal{H} &=
                            -\\sum_{i}^{N_e} \\frac{\\nabla_i^2 }{2}
                            -\\sum_{n}^{N_n} \\frac{\\nabla_n^2}{2M_n}
                            -\\sum_{n}^{N_n}\\sum_{i}^{N_e}\\frac{Z_n}{|{\\bf r}_i - {\\bf R}_n|}\\\\
                            &+ \\sum_{{i < j}}^{N_e} \\frac{1}{|{\\bf r}_i - {\\bf r}_j|}
                            -\\sum_{{n < m}}^{N_n} \\frac{Z_n Z_{m}}{|{\\bf R}_n - {\\bf R}_{m}|}
                            \\end{align*}"
                    }
                }
                LowerRightSlide {
                    title: "Wave Function"
                    Latex {
                        width: parent.width * 0.4
                        text: "$$\\Psi\\left(\\{\\mathbf{R}_n\\}, \\{\\mathbf{r}_i\\}, t\\right)$$"
                    }
                }
            }
        ]
    }

    // -----------------------------------------------
    // --------------- text and Equations ------------
    // -----------------------------------------------

    MultiSlide{
        anchors.fill: parent
        UpperLeftSlide{
            id: quantum
            title: "Quantum Mechanics"
            Column {
                anchors.centerIn: parent

                Text{
                    text: "Schrödinger equation:"
                    font.family: quantum.contentFont.family
                    font.pixelSize: quantum.contentFont.pixelSize * 0.6
                }
                Item {
                    height: quantum.height * 0.05
                    width: 1
                }
                Latex {
                    anchors.centerIn: undefined
                    width: quantum.width * 0.25
                    text: "$$i \\hbar \\frac{\\partial}{\\partial t}\\Psi= \\mathcal{H}\\Psi$$"
                }
                Item {
                    height: quantum.height * 0.1
                    width: 1
                }
                Text{
                    text: "N-body problem:"
                    font.family: quantum.contentFont.family
                    font.pixelSize: quantum.contentFont.pixelSize * 0.6
                }
                Item {
                    height: quantum.height * 0.05
                    width: 1
                }

                Latex {
                    anchors.centerIn: undefined
                    width: quantum.width * 0.3
                    text: "$$\\Psi(\\mathbf{r}_1,\\mathbf{r}_2,\\dots,\\mathbf{r}_N, t)$$"
                }
            }
        }
    }




    // -----------------------------------------------
    // ----------- Figures (default and border)-------
    // -----------------------------------------------

    MultiSlide{
        UpperLeftSlide {
            Heading {
                text: "Figures"
            }
        }
        UpperRightSlide {
            BorderedImage {
                anchors.fill: parent
                source: "../../figures/benzene.png"
            }
        }
        LowerLeftSlide {
            BorderedImage {
                anchors.fill: parent
                source: "../../figures/ions.png"
            }
        }
        LowerRightSlide {
            DefaultImage {
                anchors.fill: parent
                source: "../../figures/boron.png"
            }
        }
    }


    // -----------------------------------------------
    // -----------Two screens figure------------------
    // -----------------------------------------------

    MultiSlide{
        UpperLeftSlide {
            centeredText: "Two screens figure"
        }

        Image {
            anchors {
                right: parent.right
                top: parent.top
                bottom: parent.bottom
                left: parent.horizontalCenter
                margins: parent.height * 0.02
            }

            fillMode: Image.PreserveAspectFit
            source: "../../figures/densityCH5.png"
            antialiasing: true
            smooth: true
        }
    }

    // -----------------------------------------------
    // -----------Video-------------------------------
    // -----------------------------------------------
    MultiSlide{
        UpperLeftSlide {
            title: "Video"
        }

        UpperRightSlide {
            Rectangle {
                width: parent.width
                height: parent.height
                color:"black"
                Video
                {
                    id: video
                    anchors.fill: parent
                    source:"../../videos/aout.mp4"
                    autoPlay:  false
                    autoLoad:  false

                }
                Button {
                    id: button
                    text: "Play"
                    anchors {
                        bottom: parent.bottom
                    }
                    onClicked: {
                        if(video.playbackState === MediaPlayer.StoppedState
                                || video.playbackState === MediaPlayer.PausedState) {
                            video.play()
                        } else {
                            video.pause()
                        }
                    }
                }
                Slider{
                    anchors {
                        bottom: parent.bottom
                        left: button.right
                        right: video.right

                    }
                    width: parent.width * 0.1
                    value: video.position
                    stepSize: 1
                    minimumValue: 0
                    maximumValue: video.duration
                    onPressedChanged: {
                        if(pressed) {
                            video.pause()
                        } else {
                            video.play()
                        }
                    }

                    onValueChanged: video.seek(value)
                }
            }
        }
    }


    // -----------------------------------------------
    // -----------Thanks------------------------------
    // -----------------------------------------------

    UpperLeftSlide {
        centeredText: "Thank you for your attention!"
    }



}



