__int64 __fastcall sub_292F0(__int64 a1)
{
  int v1; // w22
  __int64 result; // x0
  int v3; // w8
  int v5; // [xsp+2Ch] [xbp-1E4h]
  __int64 v6; // [xsp+38h] [xbp-1D8h]
  _QWORD *v7; // [xsp+40h] [xbp-1D0h]
  int v8; // [xsp+4Ch] [xbp-1C4h]
  _OWORD v9[6]; // [xsp+50h] [xbp-1C0h] BYREF
  _BYTE v10[256]; // [xsp+B0h] [xbp-160h] BYREF
  __int64 v11; // [xsp+1B0h] [xbp-60h]

  v11 = *(_QWORD *)(_ReadStatusReg(TPIDR_EL0) + 40);
  memset(v10, 0, sizeof(v10));
  sub_8E28(&unk_F38B0, v10, 256);
  result = sub_5914(v10);
  v3 = 1682766354;
  v5 = result;
  while ( 1 )
  {
    while ( 1 )
    {
      while ( v3 <= 1268864698 )
      {
        if ( v3 > 463546429 )
        {
          if ( v3 == 463546430 )
          {
            v1 = v8 + 1;
            v3 = 1268864699;
          }
          else
          {
            result = sub_14068(a1, *v7);
            v3 = 463546430;
          }
        }
        else if ( v3 == -140397479 )
        {
          v7 = (_QWORD *)v9 + v6;
          result = sub_75D4(v10, *v7);
          if ( result )
            v3 = 871743536;
          else
            v3 = 463546430;
        }
        else
        {
          v3 = 1905169899;
        }
      }
      if ( v3 > 1682766353 )
        break;
      if ( v3 == 1268864699 )
      {
        v8 = v1;
        v6 = v1;
        if ( (unsigned __int64)v1 >= 0xC )
          v3 = 104515188;
        else
          v3 = -140397479;
      }
      else
      {
        v1 = 0;
        v9[0] = *(_OWORD *)&off_F1008;
        v9[1] = *(_OWORD *)off_F1018;
        v9[4] = *(_OWORD *)off_F1048;
        v9[5] = off_F1058;
        v9[2] = *(_OWORD *)off_F1028;
        v9[3] = *(_OWORD *)off_F1038;
        v3 = 1268864699;
      }
    }
    if ( v3 != 1682766354 )
      break;
    if ( v5 <= 0 )
      v3 = 1905169899;
    else
      v3 = 1417500748;
  }
  return result;
}
