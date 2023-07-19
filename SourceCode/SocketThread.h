//---------------------------------------------------------------------------
#ifndef SocketThreadH
#define SocketThreadH
//---------------------------------------------------------------------------
#include "Define.h"
#include <System.Classes.hpp>

enum ThreadWorkingType
{
	THREAD_STOP = 0,
	THREAD_RUNNING = 1,
	THREAD_TERMINATED = 2,
};
//---------------------------------------------------------------------------

class CSocketThread : public TThread {
private:
	ThreadWorkingType	m_eThreadWork;
	SOCKET	*m_sock;
    int m_ThreadID;

protected:
public: // Variables
	BYTE sendBuff[SEND_BUF_SIZE];
	BYTE* p_sendText;
	BYTE recvBuff[RECV_BUF_SIZE];
	//SERVERDATA recvData;
	bool isTryingToConnect;
	bool isConnected;

public: // Functions
	__fastcall CSocketThread(SOCKET *p_sock, int _ID = 0);
	__fastcall ~CSocketThread();
	bool __fastcall Receive();
	void __fastcall Execute();
	void __fastcall Stop();
	void __fastcall Resume();
	void __fastcall DoTerminate();
	ThreadWorkingType __fastcall GetThreadStatus();
    int __fastcall GetCommID(BYTE* _pBuf);
};
//---------------------------------------------------------------------------











//---------------------------------------------------------------------------
#endif
