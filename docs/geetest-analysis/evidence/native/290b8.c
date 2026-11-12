__int64 __fastcall sub_290B8(__int64 a1)
{
  int v1; // w22
  __int64 result; // x0
  int v3; // w8
  int v5; // [xsp+2Ch] [xbp-E4h]
  __int64 v6; // [xsp+38h] [xbp-D8h]
  _QWORD *v7; // [xsp+40h] [xbp-D0h]
  int v8; // [xsp+4Ch] [xbp-C4h]
  _OWORD v9[2]; // [xsp+50h] [xbp-C0h] BYREF
  _BYTE v10[64]; // [xsp+70h] [xbp-A0h] BYREF
  __int64 v11; // [xsp+B0h] [xbp-60h]

  v11 = *(_QWORD *)(_ReadStatusReg(TPIDR_EL0) + 40);
  memset(v10, 0, sizeof(v10));
  sub_8E28(&xmmword_F3770, v10, 64);
  result = sub_5914(v10);
  v3 = -8406584;
  v5 = result;
  while ( 1 )
  {
    while ( 1 )
    {
      while ( v3 > 129573386 )
      {
        if ( v3 > 1670687854 )
        {
          if ( v3 == 1670687855 )
          {
            result = sub_14068(a1, *v7);
            v3 = 1951756628;
          }
          else
          {
            v1 = v8 + 1;
            v3 = -940581373;
          }
        }
        else if ( v3 == 129573387 )
        {
          v3 = -1534713737;
        }
        else
        {
          v1 = 0;
          v9[0] = *(_OWORD *)off_F0FE8;
          v9[1] = *(_OWORD *)off_F0FF8;
          v3 = -940581373;
        }
      }
      if ( v3 <= -8406585 )
        break;
      if ( v3 == -8406584 )
      {
        if ( v5 <= 0 )
          v3 = -1534713737;
        else
          v3 = 558548618;
      }
      else
      {
        v7 = (_QWORD *)v9 + v6;
        result = sub_75D4(v10, *v7);
        if ( result )
          v3 = 1670687855;
        else
          v3 = 1951756628;
      }
    }
    if ( v3 != -940581373 )
      break;
    v8 = v1;
    v6 = v1;
    if ( (unsigned __int64)v1 >= 4 )
      v3 = 129573387;
    else
      v3 = 23935723;
  }
  return result;
}
