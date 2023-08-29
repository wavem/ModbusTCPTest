//---------------------------------------------------------------------------

#ifndef MainH
#define MainH
//---------------------------------------------------------------------------
#include "Define.h"
#include "SocketThread.h"
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxGraphics.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "dxBar.hpp"
#include "dxRibbon.hpp"
#include "dxRibbonCustomizationForm.hpp"
#include "dxRibbonSkins.hpp"
#include "dxSkinBlack.hpp"
#include "dxSkinBlue.hpp"
#include "dxSkinBlueprint.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinCoffee.hpp"
#include "dxSkinDarkRoom.hpp"
#include "dxSkinDarkSide.hpp"
#include "dxSkinDevExpressDarkStyle.hpp"
#include "dxSkinDevExpressStyle.hpp"
#include "dxSkinFoggy.hpp"
#include "dxSkinGlassOceans.hpp"
#include "dxSkinHighContrast.hpp"
#include "dxSkiniMaginary.hpp"
#include "dxSkinLilian.hpp"
#include "dxSkinLiquidSky.hpp"
#include "dxSkinLondonLiquidSky.hpp"
#include "dxSkinMcSkin.hpp"
#include "dxSkinMetropolis.hpp"
#include "dxSkinMetropolisDark.hpp"
#include "dxSkinMoneyTwins.hpp"
#include "dxSkinOffice2007Black.hpp"
#include "dxSkinOffice2007Blue.hpp"
#include "dxSkinOffice2007Green.hpp"
#include "dxSkinOffice2007Pink.hpp"
#include "dxSkinOffice2007Silver.hpp"
#include "dxSkinOffice2010Black.hpp"
#include "dxSkinOffice2010Blue.hpp"
#include "dxSkinOffice2010Silver.hpp"
#include "dxSkinOffice2013DarkGray.hpp"
#include "dxSkinOffice2013LightGray.hpp"
#include "dxSkinOffice2013White.hpp"
#include "dxSkinPumpkin.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsDefaultPainters.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include "dxSkinsdxRibbonPainter.hpp"
#include "dxSkinSeven.hpp"
#include "dxSkinSevenClassic.hpp"
#include "dxSkinSharp.hpp"
#include "dxSkinSharpPlus.hpp"
#include "dxSkinSilver.hpp"
#include "dxSkinSpringTime.hpp"
#include "dxSkinStardust.hpp"
#include "dxSkinSummer2008.hpp"
#include "dxSkinTheAsphaltWorld.hpp"
#include "dxSkinValentine.hpp"
#include "dxSkinVisualStudio2013Blue.hpp"
#include "dxSkinVisualStudio2013Dark.hpp"
#include "dxSkinVisualStudio2013Light.hpp"
#include "dxSkinVS2010.hpp"
#include "dxSkinWhiteprint.hpp"
#include "dxSkinXmas2008Blue.hpp"
#include "AdvMemo.hpp"
#include "AdvEdit.hpp"
//---------------------------------------------------------------------------
class CSocketThread;
class TFormMain : public TForm
{
__published:	// IDE-managed Components
	TPanel *___pnBase;
	TdxRibbonTab *RibbonMenuTab1;
	TdxRibbon *RibbonMenu;
	TdxBarManager *BarMgr;
	TAdvMemo *memo;
	TdxBar *BarMgrBar1;
	TdxBarLargeButton *MenuBtn_Connect;
	TdxBarLargeButton *MenuBtn_Disconnect;
	TAdvMemo *memo_Send;
	TAdvMemo *memo_Recv;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TAdvEdit *ed_SendBuf_0;
	TLabel *Label4;
	TAdvEdit *ed_SendBuf_1;
	TLabel *Label5;
	TLabel *Label6;
	TLabel *Label7;
	TAdvEdit *ed_SendBuf_2;
	TAdvEdit *ed_SendBuf_3;
	TAdvEdit *ed_SendBuf_5;
	TAdvEdit *ed_SendBuf_4;
	TAdvEdit *ed_SendBuf_6;
	TAdvEdit *ed_SendBuf_7;
	TLabel *Label8;
	TLabel *Label9;
	TLabel *Label10;
	TdxBar *BarMgrBar2;
	TdxBarLargeButton *MenuBtn_Send;
	TdxBarLargeButton *MenuBtn_FaultDownload;
	TdxBarLargeButton *MenuBtn_OpdataDownload;
	TdxBar *BarMgrBar3;
	TdxBarLargeButton *MenuBtn_Version;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall MenuBtn_ConnectClick(TObject *Sender);
	void __fastcall MenuBtn_SendClick(TObject *Sender);
	void __fastcall MenuBtn_FaultDownloadClick(TObject *Sender);
	void __fastcall MenuBtn_OpdataDownloadClick(TObject *Sender);
	void __fastcall MenuBtn_VersionClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFormMain(TComponent* Owner);

public: // DEFAULT FUNCTIONS
	void __fastcall InitProgram();
    void __fastcall ExitProgram();
    void __fastcall PrintMsg(UnicodeString _str);
    void __fastcall PrintSend(UnicodeString _str);
    void __fastcall PrintRecv(UnicodeString _str);

public: // DEFAULT MEMBER VARIABLES
	bool m_bIsNowDownloading;

public: // Download Functions
	bool __fastcall SendRequestPacket(unsigned char _FCode, unsigned short _StartIdx, unsigned short _Size);
    unsigned short m_StartIdx;
    unsigned short m_TotalDataBlockCount;
    int m_CurrentSaveIndex;
    unsigned short __fastcall GetCRCValue(BYTE* _pData, int _DataSize);
	BYTE m_FileBuf[FILE_SAVE_BUF_SIZE];
    bool __fastcall SaveFile(int _Type, BYTE _CarID);
    bool m_bIsFirstPacket;
    int m_DownloadBlockCount;


public: // SOCKET
	CSocketThread *m_pSocketThread;
	SOCKET m_TCPSocket;
    bool __fastcall CreateTCPSocket();
    bool __fastcall CreateSocketThread();
	bool __fastcall InitSocket();
    BYTE m_SendBuf[SEND_BUF_SIZE];
    BYTE m_RecvBuf[RECV_BUF_SIZE];
    bool __fastcall SendTestPacket();
    void __fastcall ExtractSendData();



public: // Message Handler
	void __fastcall PrintThreadLogMessage(TMessage &_msg);
	void __fastcall ReceiveServerData(TMessage &_msg);

BEGIN_MESSAGE_MAP
	MESSAGE_HANDLER(MSG_LOG_FROM_THREAD, TMessage, PrintThreadLogMessage)
	MESSAGE_HANDLER(MSG_SERVER_DATA, TMessage, ReceiveServerData)
END_MESSAGE_MAP(TForm)
};
//---------------------------------------------------------------------------
extern PACKAGE TFormMain *FormMain;



//---------------------------------------------------------------------------
#endif
