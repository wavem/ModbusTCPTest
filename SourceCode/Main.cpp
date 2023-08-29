//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Main.h"
#include "Dlg_Version.h"
#include <stdio.h>
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
    m_bIsNowDownloading = false;
    m_TotalDataBlockCount = 0;
    m_CurrentSaveIndex = 0;
    memset(m_FileBuf, 0, sizeof(m_FileBuf));
    m_bIsFirstPacket = true;
    m_DownloadBlockCount = 0;
    m_bIsConnected = false;

	// Init Socket
    if(InitSocket()) {
    	if(CreateTCPSocket() == false) {
        	return;
        }
    }

	PrintMsg(L"Program Init Complete");
    PrintMsg(L"Please Connect to TCMS");
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

	// Common
	UnicodeString tempStr = L"";
    UnicodeString t_OutputStr = L"";
	unsigned int t_wParam = _msg.WParam;
	int t_lParam = _msg.LParam; // LParam is Body Size
	unsigned short t_RecvSize = 0;
    int t_BodySize = t_lParam; // Get Body Size

    // Copy Stream
    BYTE* p_Buffer = (BYTE*)t_wParam;
    memcpy(m_RecvBuf, p_Buffer, t_BodySize);

    // Print Received Packet Size
    //tempStr.sprintf(L"Packet Received (Size : %d)", t_BodySize);
    //PrintMsg(tempStr);

    // Print Header
    //for(int i = 0 ; i < 7 ; i++) {
    //	tempStr.sprintf(L"%02X ", m_RecvBuf[i]);
    //	t_OutputStr += tempStr;
    //}
    //PrintRecv(t_OutputStr);

    // Print Body
    //t_OutputStr = L"";
    //for(int i = 7 ; i < t_BodySize - 7; i++) {
    //	tempStr.sprintf(L"%02X ", m_RecvBuf[i]);
    //	t_OutputStr += tempStr;
    //}
    //PrintRecv(t_OutputStr);

    // Download Routine
    // Pre Return
    if(m_bIsNowDownloading == false) return; // Because Test Packet Sending (Just one packet)

    // Get FCode
    BYTE t_FCode = m_RecvBuf[1];

    // Get Car ID
    BYTE t_CarID = m_RecvBuf[3];

    // Get Current Data Len (for Opdata Downloading Count)
    BYTE t_CurrentDataLen = m_RecvBuf[6]; // For Opdata Download Counting

    // Get Total Data Block Count
    memcpy(&m_TotalDataBlockCount, &m_RecvBuf[4], 2);
    m_TotalDataBlockCount = ntohs(m_TotalDataBlockCount);

    // Print Download Block Count
    m_DownloadBlockCount++;
    if(m_DownloadBlockCount % 100 == 0) {
    	tempStr.sprintf(L"Download %d/%d", m_DownloadBlockCount * 10, m_TotalDataBlockCount);
    	PrintMsg(tempStr);
    }

    if(m_bIsFirstPacket) {
        tempStr.sprintf(L"Total Count : %d", m_TotalDataBlockCount);
    	PrintMsg(tempStr);
        m_bIsFirstPacket = false;
    }

    // Get Current Data Size
    unsigned short t_CurrentSize = m_RecvBuf[6];

    // Save to File Buffer
    if(t_FCode == 0x65) {
    	memcpy(m_FileBuf + m_CurrentSaveIndex, m_RecvBuf + 7, t_CurrentSize);
        m_CurrentSaveIndex += t_CurrentSize;
    } else if(t_FCode == 0x66) {
    	memcpy(m_FileBuf + m_CurrentSaveIndex, m_RecvBuf + 7, t_CurrentSize * 180);
        m_CurrentSaveIndex += (t_CurrentSize * 180);
    } else {
        tempStr.sprintf(L"Download Failed (FCODE ERROR)");
        PrintMsg(tempStr);
        return;
    }


    // Request Routine
    if(t_FCode == 0x65) {
    	if(m_StartIdx + 8 <= m_TotalDataBlockCount) {
        	SendRequestPacket(0x65, m_StartIdx, 8);
            m_StartIdx += 8;
        } else {
        	if(m_TotalDataBlockCount - m_StartIdx > 0) {
            	SendRequestPacket(0x65, m_StartIdx, m_TotalDataBlockCount - m_StartIdx);
            	m_StartIdx += m_TotalDataBlockCount - m_StartIdx;
            } else {
                PrintMsg(L"Fault Download Complete");
                SaveFile(0x65, t_CarID);
                m_bIsNowDownloading = false;
                m_StartIdx = 0;
                m_CurrentSaveIndex = 0;
                m_bIsFirstPacket = true;
                m_DownloadBlockCount = 0;
            }
        }
    } else if(t_FCode == 0x66) {
    	if(m_StartIdx + 10 <= m_TotalDataBlockCount) {
        	SendRequestPacket(0x66, m_StartIdx, 10);
            m_StartIdx += 10;
        } else {
        	if(m_TotalDataBlockCount - m_StartIdx > 0) {
            	SendRequestPacket(0x66, m_StartIdx, m_TotalDataBlockCount - m_StartIdx);
            	m_StartIdx += m_TotalDataBlockCount - m_StartIdx;
            } else {
                PrintMsg(L"Opdata Download Complete");
                SaveFile(0x66, t_CarID);
                m_bIsNowDownloading = false;
                m_StartIdx = 0;
                m_CurrentSaveIndex = 0;
                m_bIsFirstPacket = true;
                m_DownloadBlockCount = 0;
            }
        }
    }
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::SaveFile(int _Type, BYTE _CarID) {

	// Common
    UnicodeString tempStr = L"";
    UnicodeString t_RootPath = ExtractFilePath(ParamStr(0));
    AnsiString t_dstPath = "";
    FILE* t_Wfp = NULL;
    TDateTime t_DateTime;

    // Determine File Name Routine Here
    t_DateTime = Now();
    if(_Type == 0x65) {
    	tempStr.sprintf(L"FaultData_CAR%03d_", _CarID);
        tempStr += t_DateTime.FormatString(L"yyyymmdd_hhnnss");
        tempStr += L".bin";
        t_dstPath = t_RootPath + L"DATA\\Fault\\" + tempStr;
    } else if(_Type == 0x66) {
    	//tempStr.sprintf(L"DN_");                              // CPTM Ver
        //tempStr += t_DateTime.FormatString(L"yymmdd-hhnnss"); // CPTM Ver
        //tempStr += L"_NO1-CNCMC.trw"; 					    // CPTM Ver
        tempStr.sprintf(L"OpData_CAR%03d_", _CarID);
        tempStr += t_DateTime.FormatString(L"yyyymmdd_hhnnss");
        tempStr += L".bin";
        t_dstPath = t_RootPath + L"DATA\\Operation\\" + tempStr;
    } else {
        tempStr = L"unknown_File.bin";
    }

    // Write File Routine
    //t_dstPath = t_RootPath + L"Data\\" + tempStr; // CPTM Ver
    //t_dstPath = t_RootPath + L"DATA\\Operation\\" + tempStr;
    PrintMsg(t_dstPath);
    t_Wfp = fopen(t_dstPath.c_str(), "wb");
    if(!t_Wfp) {
    	PrintMsg(L"Fail to Create Data File");
        return false;
    }

    // Init File Pointer Index
    fseek(t_Wfp, 0, SEEK_SET);

    // File Write Routine
    if(_Type == 0x65) {
    	fwrite(m_FileBuf, 1, m_TotalDataBlockCount * 28, t_Wfp);
    } else if(_Type == 0x66) {
    	fwrite(m_FileBuf, 1, m_TotalDataBlockCount * 180, t_Wfp);
    }

    fclose(t_Wfp);
    return true;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::MenuBtn_SendClick(TObject *Sender)
{
    ExtractSendData();
    SendTestPacket();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ExtractSendData() {
	m_SendBuf[0] = ed_SendBuf_0->IntValue; // Des ID
    m_SendBuf[1] = ed_SendBuf_1->IntValue; // F-Code
    m_SendBuf[2] = ed_SendBuf_2->IntValue; // Start Add
    m_SendBuf[3] = ed_SendBuf_3->IntValue;
    m_SendBuf[4] = ed_SendBuf_4->IntValue; // Num of Pos
    m_SendBuf[5] = ed_SendBuf_5->IntValue;

    unsigned short t_CRCValue = GetCRCValue(m_SendBuf, 6);
    memcpy(&m_SendBuf[6], &t_CRCValue, 2);

    // Print to Edit Control
    //ed_SendBuf_6->IntValue = m_SendBuf[6];
    //ed_SendBuf_7->IntValue = m_SendBuf[7];
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::SendTestPacket() {

	// Common
	UnicodeString tempStr = L"";
	int t_sendrst = 0;
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

void __fastcall TFormMain::MenuBtn_FaultDownloadClick(TObject *Sender)
{
	memset(m_FileBuf, 0, sizeof(m_FileBuf));
    m_CurrentSaveIndex = 0;
    if(SendRequestPacket(0x65, 0, 1)) {
    	m_bIsNowDownloading = true;
        m_StartIdx = 1;
    	PrintMsg(L"Fault Download Start");
    }
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::MenuBtn_OpdataDownloadClick(TObject *Sender)
{
	memset(m_FileBuf, 0, sizeof(m_FileBuf));
    m_CurrentSaveIndex = 0;
    if(SendRequestPacket(0x66, 0, 1)) {
    	m_bIsNowDownloading = true;
        m_StartIdx = 1;
    	PrintMsg(L"Opdata Download Start");
    }
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::SendRequestPacket(unsigned char _FCode, unsigned short _StartIdx, unsigned short _Size) {

	// Common
	UnicodeString tempStr = L"";
	int t_sendrst = 0;
	unsigned short t_PacketLen = 8;
    unsigned short t_CRCValue = 0;
    unsigned short t_usValue = 0;

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

    // Making Send Data
    m_SendBuf[0] = 0x01; // Des ID
    m_SendBuf[1] = _FCode; // F-Code
    t_usValue = htons(_StartIdx);
    memcpy(&m_SendBuf[2], &t_usValue, 2); // Start Add
	t_usValue = htons(_Size);
    memcpy(&m_SendBuf[4], &t_usValue, 2); // Num of Pos
    t_CRCValue = GetCRCValue(m_SendBuf, 6); // Making CRC Value
    memcpy(&m_SendBuf[6], &t_CRCValue, 2); // CRC Value Setting

	// Send to Server
	t_sendrst = send(m_TCPSocket, (char*)m_SendBuf, 8, 0);

	// Function End Routine
	//tempStr.sprintf(L"Send Byte : %d", t_sendrst);
	//PrintMsg(tempStr);

    if(t_sendrst < 0) {
    	PrintMsg(L"Fail to Send...");
        return false;
    }

	//tempStr.sprintf(L"%02X %02X %02X %02X %02X %02X %02X %02X",
    //	m_SendBuf[0], m_SendBuf[1], m_SendBuf[2], m_SendBuf[3], m_SendBuf[4], m_SendBuf[5], m_SendBuf[6], m_SendBuf[7]);
    //PrintSend(tempStr);
	return true;
}
//---------------------------------------------------------------------------

unsigned short __fastcall TFormMain::GetCRCValue(BYTE* _pData, int _DataSize) {
	int i;
	unsigned short crc, flag;
	crc = 0xFFFF;
	while(_DataSize--)
	{
		crc ^= *_pData++;

		for (i=0; i<8; i++)
		{
			flag = crc & 0x0001;
			crc >>= 1;
			if(flag) crc ^= POLYNORMIAL;
		}
	}
	return crc;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::MenuBtn_VersionClick(TObject *Sender)
{
	TFormVersion *p_dlg = new TFormVersion(NULL);
    p_dlg->ShowModal();
    delete p_dlg;
}
//---------------------------------------------------------------------------

