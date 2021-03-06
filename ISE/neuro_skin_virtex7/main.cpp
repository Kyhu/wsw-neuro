//-----------------------------------------------
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
//-----------------------------------------------
using namespace std;
//-----------------------------------------------
int learning_rate(int tx, int fx, int dmin,int debug)
{
  int T_INC=0x0100;
  int T_DEC=0x000d;
  int T_UP=0xc800;
  int T_LOW=0x0200;
  
  int d=0;
  int ntx=0;
  
  if(dmin==0)
  {
    if(fx==0) ntx=T_LOW;
    else ntx=T_UP;
    if(debug) cout<<std::hex<<"dmin==0 ntx:"<<ntx<<endl;
  }
  else
  {
    float dd;
    float ftd=T_DEC;ftd=ftd/256.0;
    float fti=T_INC;fti=fti/256.0;
    float fdm=dmin;fdm=fdm/256.0;
    
    if(debug) cout<<std::hex<<"dmin:"<<dmin<<" inc:"<<T_INC<<" dec:"<<T_DEC;   
    
    if(fx==0) dd=ftd/fdm; 
    else dd=fti/fdm;
    
    d=floor(dd*256.0);
    
    if(fx==0) ntx=tx-d;
    else ntx=tx+d;

    if(debug) cout<<std::hex<<" tx_d0:"<<tx<<" div_res:"<<d<<" fx_d0:"<<fx;    
    
    if(ntx<T_LOW) ntx=T_LOW;
    if(ntx>T_UP) ntx=T_UP;
    
    if(debug) cout<<std::hex<<" ntx:"<<ntx<<endl;     
  }
  
  return (ntx&0xffff);
}
//-----------------------------------------------
int decision_threshold(int rx, int dmin,int debug)
{
  int R_INC=0x010d;
  int R_DEC=0x00f3;
  int R_LOW=0x1200;
  int R_SCALE=0x0500;

  int nrx;
  int dr=dmin*R_SCALE;
  dr=(dr>>8);
  
  if(debug) cout<<std::hex<<"dr:"<<dr;
  
  if(rx>dr) nrx=rx*R_DEC;
  else nrx=rx*R_INC;

  if(debug) cout<<std::hex<<" rx>dr:"<<(int)(rx>dr);
  
  nrx=(nrx>>8);  
  
  if(debug) cout<<" nrx:"<<std::hex<<nrx<<" dr:"<<dr<<endl;
  
  if(nrx<R_LOW) nrx=R_LOW;
  if(nrx>0xffff) nrx=0xffff;
  
  return (nrx&0xffff);
}
//-----------------------------------------------
int main()
{
  FILE *rx_file,*nrx_file,*tx_file,*ntx_file;
  
  rx_file=fopen("rx.vec","w");
  nrx_file=fopen("nrx.vec","w");
  tx_file=fopen("tx.vec","w");
  ntx_file=fopen("ntx.vec","w");
  
  for(int i=0;i<1000;i++)
  {
    int tx=rand()&0xffff;
    int fx=rand()&0x1;
    int dmin=rand()&0xffff;
    
    fprintf(tx_file,"%x %x %x\n",tx,fx,dmin);
    
    int ntx=learning_rate(tx,fx,dmin,i==1);
    
    fprintf(ntx_file,"%04x\n",ntx);    
  }

  for(int i=0;i<1000;i++)
  {
    int rx=rand()&0xffff;
    int dmin=rand()&0xffff;
    
    fprintf(rx_file,"%x %x\n",rx,dmin);
    
    int nrx=decision_threshold(rx,dmin,0);
    
    fprintf(nrx_file,"%04x\n",nrx);    
  }  
  
  cout<<"done"<<endl;
  return 0;   
}
 //----------------------------------------------
 