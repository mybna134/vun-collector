unsigned __int64 __fastcall sub_95F0(
        unsigned __int64 result,
        _BYTE *a2,
        __int64 a3,
        __int64 a4,
        __int64 a5,
        __int64 a6,
        _BYTE *a7)
{
  unsigned int v7; // w9
  __int64 v8; // x8
  int v9; // w13
  int v10; // w8
  unsigned __int8 *v11; // x8
  _BYTE *v12; // x10
  int v13; // w11
  _BYTE *v14; // x6
  unsigned __int8 *v15; // x8
  _BYTE *v16; // x6
  unsigned __int8 *v17; // x8
  int v18; // w0
  bool v19; // zf
  int v20; // t1
  unsigned int v21; // [xsp+4h] [xbp-15Ch]
  unsigned int v22; // [xsp+8h] [xbp-158h]
  int v23; // [xsp+Ch] [xbp-154h]
  _BYTE *v24; // [xsp+10h] [xbp-150h]
  _BYTE *v25; // [xsp+20h] [xbp-140h]
  unsigned __int8 *v26; // [xsp+38h] [xbp-128h]
  _BYTE v27[128]; // [xsp+40h] [xbp-120h] BYREF
  unsigned __int8 v28[64]; // [xsp+C0h] [xbp-A0h] BYREF
  __int64 v29; // [xsp+100h] [xbp-60h]

  v24 = (_BYTE *)result;
  v8 = *(_QWORD *)(_ReadStatusReg(TPIDR_EL0) + 40);
  if ( result )
    v9 = 1381165233;
  else
    v9 = 1892598919;
  v29 = v8;
  v10 = -1616694804;
  v25 = a2;
  v23 = v9;
  while ( 1 )
  {
    while ( 1 )
    {
      while ( v10 <= -1616694805 )
      {
        if ( v10 == -1947164339 )
        {
          v10 = 464536045;
          result = v7;
        }
        else if ( v10 == -1789046839 )
        {
          v7 = 0;
          v10 = -1947164339;
        }
        else
        {
          v11 = v26;
          v12 = a2;
          v13 = 1228284848;
          while ( v13 != 692032494 )
          {
            v20 = *v11++;
            *v12++ = v20;
            if ( v20 )
              v13 = 1228284848;
            else
              v13 = 692032494;
          }
          v10 = -1947164339;
          v7 = 1;
        }
      }
      if ( v10 <= 1381165232 )
        break;
      if ( v10 == 1892598919 )
      {
        result = 0;
        v10 = 464536045;
      }
      else
      {
        memset(v28, 0, sizeof(v28));
        v21 = v7;
        v22 = result;
        sub_6630(v28, &byte_F2050, a7, v28);
        sub_6630(v28, v24, v14, v15);
        sub_6630(v28, &qword_F2058, v16, v17);
        v26 = v27;
        memset(v27, 0, sizeof(v27));
        v18 = sub_8650(v28, v27, 128);
        v9 = v23;
        a2 = v25;
        v19 = v18 == 0;
        v7 = v21;
        result = v22;
        if ( v19 )
          v10 = -1789046839;
        else
          v10 = -1751145425;
      }
    }
    if ( v10 != -1616694804 )
      break;
    v10 = v9;
  }
  return result;
}
