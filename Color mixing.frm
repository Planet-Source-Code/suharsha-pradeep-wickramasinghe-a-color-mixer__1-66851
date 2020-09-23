VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Color Mixing"
   ClientHeight    =   4815
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   6225
   LinkTopic       =   "Form1"
   ScaleHeight     =   4815
   ScaleWidth      =   6225
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Color 
      Height          =   2655
      Left            =   3360
      ScaleHeight     =   2595
      ScaleWidth      =   2475
      TabIndex        =   6
      Top             =   360
      Width           =   2535
   End
   Begin VB.HScrollBar HSBlue 
      Height          =   255
      LargeChange     =   5
      Left            =   120
      Max             =   255
      TabIndex        =   4
      Top             =   2400
      Width           =   2055
   End
   Begin VB.HScrollBar HSGreen 
      Height          =   255
      LargeChange     =   5
      Left            =   120
      Max             =   255
      TabIndex        =   2
      Top             =   1320
      Width           =   2055
   End
   Begin VB.HScrollBar HSRed 
      Height          =   255
      LargeChange     =   5
      Left            =   120
      Max             =   255
      TabIndex        =   0
      Top             =   360
      Width           =   2055
   End
   Begin VB.Label Label3 
      Caption         =   "Blue"
      Height          =   375
      Left            =   960
      TabIndex        =   9
      Top             =   2760
      Width           =   975
   End
   Begin VB.Label Label2 
      Caption         =   "Green"
      Height          =   375
      Left            =   960
      TabIndex        =   8
      Top             =   1800
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "Red"
      Height          =   375
      Left            =   960
      TabIndex        =   7
      Top             =   720
      Width           =   855
   End
   Begin VB.Label lblBlue 
      Caption         =   "Blue"
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   2760
      Width           =   615
   End
   Begin VB.Label lblGreen 
      Caption         =   "Green"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   1800
      Width           =   495
   End
   Begin VB.Label lblRed 
      Caption         =   "Red"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   720
      Width           =   615
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub HSBlue_Change()
lblBlue.Caption = HSBlue.Value
Color.BackColor = RGB(HSRed.Value, HSGreen.Value, HSBlue.Value)
End Sub

Private Sub HSGreen_Change()
lblGreen.Caption = HSGreen.Value
Color.BackColor = RGB(HSRed.Value, HSGreen.Value, HSBlue.Value)
End Sub

Private Sub HSRed_Change()
lblRed.Caption = HSRed.Value
Color.BackColor = RGB(HSRed.Value, HSGreen.Value, HSBlue.Value)
End Sub
