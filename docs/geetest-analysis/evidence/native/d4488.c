__int64 __fastcall sub_D4488(__int64 a1, __int64 a2)
{
  __int64 v2; // x25
  __int64 v3; // x26
  int v5; // w0
  int v6; // w8
  __int64 v9; // [xsp+10h] [xbp-150h]
  __int64 v10; // [xsp+18h] [xbp-148h]
  int v11; // [xsp+34h] [xbp-12Ch]
  _BYTE *v12; // [xsp+40h] [xbp-120h]
  _BYTE v13[92]; // [xsp+48h] [xbp-118h] BYREF
  char v14[92]; // [xsp+A4h] [xbp-BCh] BYREF
  __int64 v15; // [xsp+100h] [xbp-60h]

  v15 = *(_QWORD *)(_ReadStatusReg(TPIDR_EL0) + 40);
  v9 = sub_14D1C(a1);
  v10 = sub_150EC(a1, v9, &qword_F7CE0);
  memset(v14, 0, sizeof(v14));
  v5 = __system_property_get(&xmmword_F7CF0, v14);
  v6 = 1668171153;
  v11 = v5;
  while ( 1 )
  {
    while ( 1 )
    {
      while ( v6 <= 1004583327 )
      {
        if ( v6 > -169546576 )
        {
          if ( v6 == -169546575 )
          {
            v2 = v10;
            if ( !strcmp(v14, &byte_F7D08) )
              v6 = -896378316;
            else
              v6 = 2124446391;
          }
          else
          {
            sub_8054(v14);
            v2 = v10;
            if ( (unsigned int)sub_167AC(a1, v10) )
              v6 = -169546575;
            else
              v6 = 2124446391;
          }
        }
        else if ( v6 == -896378316 )
        {
          v2 = v10;
          if ( (unsigned int)sub_20930(a1, a2, &xmmword_F7D10) )
            v6 = 1004583328;
          else
            v6 = 2124446391;
        }
        else
        {
          v2 = v3;
          v6 = 2124446391;
        }
      }
      if ( v6 > 1668171152 )
        break;
      if ( v6 == 1004583328 )
      {
        v12 = v13;
        memset(v13, 0, sizeof(v13));
        v3 = v10;
        if ( (unsigned int)__system_property_get(&xmmword_F7D40, v13) == 15 )
          v6 = 1008533150;
        else
          v6 = -541251240;
      }
      else
      {
        v3 = (*(__int64 (__fastcall **)(__int64, _BYTE *))(*(_QWORD *)a1 + 1336LL))(a1, v12);
        sub_15E4C(a1, v9, &qword_F7CE0, v3);
        v6 = -541251240;
      }
    }
    if ( v6 != 1668171153 )
      break;
    v2 = v10;
    if ( v11 <= 0 )
      v6 = 2124446391;
    else
      v6 = 595297115;
  }
  (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v9);
  return v2;
}
