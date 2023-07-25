//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Main.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxClasses"
#pragma link "cxControls"
#pragma link "cxGraphics"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "dxBar"
#pragma link "dxRibbon"
#pragma link "dxRibbonCustomizationForm"
#pragma link "dxRibbonSkins"
#pragma link "dxSkinBlack"
#pragma link "dxSkinBlue"
#pragma link "dxSkinBlueprint"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinCoffee"
#pragma link "dxSkinDarkRoom"
#pragma link "dxSkinDarkSide"
#pragma link "dxSkinDevExpressDarkStyle"
#pragma link "dxSkinDevExpressStyle"
#pragma link "dxSkinFoggy"
#pragma link "dxSkinGlassOceans"
#pragma link "dxSkinHighContrast"
#pragma link "dxSkiniMaginary"
#pragma link "dxSkinLilian"
#pragma link "dxSkinLiquidSky"
#pragma link "dxSkinLondonLiquidSky"
#pragma link "dxSkinMcSkin"
#pragma link "dxSkinMetropolis"
#pragma link "dxSkinMetropolisDark"
#pragma link "dxSkinMoneyTwins"
#pragma link "dxSkinOffice2007Black"
#pragma link "dxSkinOffice2007Blue"
#pragma link "dxSkinOffice2007Green"
#pragma link "dxSkinOffice2007Pink"
#pragma link "dxSkinOffice2007Silver"
#pragma link "dxSkinOffice2010Black"
#pragma link "dxSkinOffice2010Blue"
#pragma link "dxSkinOffice2010Silver"
#pragma link "dxSkinOffice2013DarkGray"
#pragma link "dxSkinOffice2013LightGray"
#pragma link "dxSkinOffice2013White"
#pragma link "dxSkinPumpkin"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsDefaultPainters"
#pragma link "dxSkinsdxBarPainter"
#pragma link "dxSkinsdxRibbonPainter"
#pragma link "dxSkinSeven"
#pragma link "dxSkinSevenClassic"
#pragma link "dxSkinSharp"
#pragma link "dxSkinSharpPlus"
#pragma link "dxSkinSilver"
#pragma link "dxSkinSpringTime"
#pragma link "dxSkinStardust"
#pragma link "dxSkinSummer2008"
#pragma link "dxSkinTheAsphaltWorld"
#pragma link "dxSkinValentine"
#pragma link "dxSkinVisualStudio2013Blue"
#pragma link "dxSkinVisualStudio2013Dark"
#pragma link "dxSkinVisualStudio2013Light"
#pragma link "dxSkinVS2010"
#pragma link "dxSkinWhiteprint"
#pragma link "dxSkinXmas2008Blue"
#pragma link "AdvMemo"
#pragma link "AdvEdit"
#pragma resource "*.dfm"
TFormMain *FormMain;
//---------------------------------------------------------------------------
__fastcall TFormMain::TFormMain(TComponent* Owner)
	: TForm(Owner)
{
	InitProgram();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::FormClose(TObject *Sender, TCloseAction &Action)
{
	ExitProgram();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::InitProgram() {

	// Init Member Variables
    m_pSocketThread = NULL;
    m_TCPSocket = INVALID_SOCKET;

	// Init Socket
    if(InitSocket()) {
    	if(CreateTCPSocket() == false) {
        	return;
        }
    }

	PrintMsg(L"Init Complete");
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ExitProgram() {

	// Delete Socket
	if(m_TCPSocket != INVALID_SOCKET) {
		closesocket(m_TCPSocket);
		m_TCPSocket = INVALID_SOCKET;
	}

	// Delete Thread
	if(m_pSocketThread != NULL) {
		m_pSocketThread->DoTerminate();
		m_pSocketThread->Terminate();
		delete m_pSocketThread;
		m_pSocketThread = NULL;
	}

	// Socket Clean Up
	WSACleanup();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintMsg(UnicodeString _str) {
	int t_Idx = memo->Lines->Add(_str);
    memo->SetCursor(0, t_Idx);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintSend(UnicodeString _str) {
	int t_Idx = memo_Send->Lines->Add(_str);
    memo_Send->SetCursor(0, t_Idx);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintRecv(UnicodeString _str) {
	int t_Idx = memo_Recv->Lines->Add(_str);
    memo_Recv->SetCursor(0, t_Idx);
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::InitSocket() {

	// Common
    UnicodeString tempStr = L"";

	// SOCKET INIT
    WSADATA data;
	WORD version;
	int ret = 0;

	version = MAKEWORD(2, 2);
	ret = WSAStartup(version, &data);
	if(ret != 0) {
		ret = WSAGetLastError();
		if(ret == WSANOTINITIALISED) {
			tempStr.sprintf(L"Socket not initialised (error code : %d)", ret);
			PrintMsg(tempStr);
		} else {
			tempStr.sprintf(L"Socket error (error code : %d)", ret);
			PrintMsg(tempStr);
		}
        return false;
	} else {
		PrintMsg(L"Socket init success");
        return true;
	}
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::CreateTCPSocket() {

    // Common
	UnicodeString tempStr = L"";
	AnsiString t_AnsiStr = "";

	// Create Socket
	m_TCPSocket = socket(AF_INET, SOCK_STREAM, 0);
	if(m_TCPSocket == INVALID_SOCKET) {
		PrintMsg(L"Fail to create socket");
		return false;
	}

	// Set Socket Option : REUSE
	int t_opt_reuse = 1;
	if(setsockopt(m_TCPSocket, SOL_SOCKET, SO_REUSEADDR,(char *)&t_opt_reuse, sizeof(t_opt_reuse)) == SOCKET_ERROR) {
		PrintMsg(L"Fail to set socket option (REUSE)");
		return false;
	}

    PrintMsg(L"Success to Create TCP Socket");
	return true;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::MenuBtn_ConnectClick(TObject *Sender)
{
	if(CreateSocketThread() == false) {
    	return;
    }
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::CreateSocketThread() {

	// Create Thread
	if(m_pSocketThread != NULL) {
		PrintMsg(L"TCP Socket Thread is already exists.");
		return false;
	}

	// Creating Client Thread
	m_pSocketThread = new CSocketThread(&m_TCPSocket);
    PrintMsg(L"TCP Socket Thread Start");
	return true;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintThreadLogMessage(TMessage &_msg) {
	unsigned int t_wParam = _msg.WParam;
	int t_lParam = _msg.LParam;

	UnicodeString tempStr = L"";
	UnicodeString *p = NULL;
	p = (UnicodeString*)t_wParam;
    if(p) tempStr = *p;

    if(t_lParam == 0x10) PrintMsg(tempStr);
    if(t_lParam == 0x20) PrintRecv(tempStr);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ReceiveServerData(TMessage &_msg) {

	//PrintMsg(L"RECVDATA!!!");

	// Common
	UnicodeString tempStr = L"";
    UnicodeString t_OutputStr = L"";
	unsigned int t_wParam = _msg.WParam;
	int t_lParam = _msg.LParam;
	//SERVERDATA* p_serverData = NULL;
	//SERVERDATA t_serverData;
	//memset(&t_serverData, 0, sizeof(t_serverData));
	unsigned short t_RecvSize = 0;

    int t_BodySize = t_lParam;

    // Copy Stream
    BYTE* p_Buffer = (BYTE*)t_wParam;
    memcpy(m_RecvBuf, p_Buffer, t_lParam);

    tempStr.sprintf(L"Recv Size : %d", t_lParam);
    //PrintMsg(tempStr);

    for(int i = 0 ; i < t_BodySize ; i++) {

    	tempStr.sprintf(L"%02X ", m_RecvBuf[i]);
    	t_OutputStr += tempStr;
    }

    PrintMsg(t_OutputStr);


	// Receive Server Data
//	p_serverData = (SERVERDATA*)t_wParam;
//	t_serverData = *p_serverData;

	// Logging Received Information
//	memcpy(&t_RecvSize, &t_serverData.Data[1], 2);
//	tempStr.sprintf(L"Received %04d byte from Server", t_RecvSize);
//	PrintLog(tempStr);

}
//---------------------------------------------------------------------------

void __fastcall TFormMain::MenuBtn_SendClick(TObject *Sender)
{
	if(MakingCRC() == false) {
    	PrintMsg(L"CRC Failed...");
        return;
    }

    ExtractSendData();
    SendPacket();
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::MakingCRC() {

	// GET 0~5 BYTE OFFSET DATA
    BYTE t_Buff[8] = {0, };

    t_Buff[0] = ed_SendBuf_0->IntValue;
    t_Buff[1] = ed_SendBuf_1->IntValue;
    t_Buff[2] = ed_SendBuf_2->IntValue;
    t_Buff[3] = ed_SendBuf_3->IntValue;
    t_Buff[4] = ed_SendBuf_4->IntValue;
    t_Buff[5] = ed_SendBuf_5->IntValue;

    // Test Code
    UnicodeString tempStr = L"";
    tempStr.sprintf(L"%02X %02X %02X %02X %02X %02X", t_Buff[0], t_Buff[1], t_Buff[2], t_Buff[3], t_Buff[4], t_Buff[5]);
    //PrintMsg(tempStr);


    // CRC ROUTINE
    unsigned short crc = 0xFFFF;
    unsigned short flag = 0;

    for(int idx = 0 ; idx < 6 ; idx++) {
    	crc ^= t_Buff[idx];

		for (int i = 0 ; i < 8 ; i++) {
			flag = crc & 0x0001;
			crc >>= 1;
			if(flag) crc ^= POLYNORMIAL;
		}
    }

	BYTE* t_pByte = (BYTE *)&crc;
	t_Buff[6] = t_pByte[0];
	t_Buff[7] = t_pByte[1];

    tempStr.sprintf(L"%02X %02X %02X %02X %02X %02X %02X %02X",
    				t_Buff[0], t_Buff[1], t_Buff[2], t_Buff[3], t_Buff[4], t_Buff[5], t_Buff[6], t_Buff[7]);
    //PrintMsg(tempStr);

    // Set Calculated CRC Value into Edit Control
    ed_SendBuf_6->IntValue = t_Buff[6];
    ed_SendBuf_7->IntValue = t_Buff[7];

	return true;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ExtractSendData() {

	m_SendBuf[0] = ed_SendBuf_0->IntValue; // Des ID
    m_SendBuf[1] = ed_SendBuf_1->IntValue; // F-Code
    m_SendBuf[2] = ed_SendBuf_2->IntValue; // Start Add
    m_SendBuf[3] = ed_SendBuf_3->IntValue;
    m_SendBuf[4] = ed_SendBuf_4->IntValue; // Num of Pos
    m_SendBuf[5] = ed_SendBuf_5->IntValue;
    m_SendBuf[6] = ed_SendBuf_6->IntValue; // CRC
    m_SendBuf[7] = ed_SendBuf_7->IntValue; // CRC
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::SendPacket() {

	// Common
	UnicodeString tempStr = L"";
	int t_sendrst = 0;
	UnicodeString t_RoomTitle = L"";
	unsigned short t_PacketLen = 8;

	// Check Client Socket
	if(m_TCPSocket == INVALID_SOCKET) {
		tempStr.sprintf(L"Client socket is invalid");
		PrintMsg(tempStr);
		return false;
	}

	// Check Client Thread
	if(m_pSocketThread == NULL) {
		tempStr.sprintf(L"Client Thread is invalid");
		PrintMsg(tempStr);
		return false;
	}

	// Check Connection
	if(m_pSocketThread->isConnected == false) {
		tempStr.sprintf(L"Client is not connected");
		PrintMsg(tempStr);
		return false;
	}

	// Reset Send Buffer
	memset(m_pSocketThread->sendBuff, 0, SEND_BUF_SIZE);

	// Set Data
	m_pSocketThread->sendBuff[0] = m_SendBuf[0];
    m_pSocketThread->sendBuff[1] = m_SendBuf[1];
    m_pSocketThread->sendBuff[2] = m_SendBuf[2];
    m_pSocketThread->sendBuff[3] = m_SendBuf[3];
    m_pSocketThread->sendBuff[4] = m_SendBuf[4];
    m_pSocketThread->sendBuff[5] = m_SendBuf[5];
    m_pSocketThread->sendBuff[6] = m_SendBuf[6];
    m_pSocketThread->sendBuff[7] = m_SendBuf[7];

	// Send to Server
	t_sendrst = send(m_TCPSocket, (char*)m_pSocketThread->sendBuff, t_PacketLen, 0);

	// Function End Routine
	tempStr.sprintf(L"Send Byte : %d", t_sendrst);
	PrintMsg(tempStr);

    if(t_sendrst < 0) {
    	PrintMsg(L"Fail to Send...");

    } else {
		tempStr.sprintf(L"%02X %02X %02X %02X %02X %02X %02X %02X",
    				m_SendBuf[0], m_SendBuf[1], m_SendBuf[2], m_SendBuf[3], m_SendBuf[4], m_SendBuf[5], m_SendBuf[6], m_SendBuf[7]);
    	PrintSend(tempStr);
    }

	return true;
}
//---------------------------------------------------------------------------

