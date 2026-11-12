__int64 __fastcall sub_1DAD8(__int64 a1, __int64 a2, __int64 a3)
{
  _BYTE *v5; // x3
  __int64 v6; // x0
  __int64 v7; // x0
  __int64 v8; // x0
  _BYTE *v9; // x3
  _BYTE *v10; // x3
  _BYTE *v11; // x3
  _BYTE *v12; // x3
  _BYTE *v13; // x3
  _BYTE *v14; // x3
  _BYTE *v15; // x3
  __int64 result; // x0
  _BYTE *v17; // x3
  int v18; // w8
  __int64 v19; // x0
  char *v20; // x2
  int v21; // [xsp+40h] [xbp-2B0h]
  _BYTE v22[64]; // [xsp+44h] [xbp-2ACh] BYREF
  char v23[92]; // [xsp+84h] [xbp-26Ch] BYREF
  char v24[92]; // [xsp+E0h] [xbp-210h] BYREF
  char v25[92]; // [xsp+13Ch] [xbp-1B4h] BYREF
  char v26[92]; // [xsp+198h] [xbp-158h] BYREF
  char v27[64]; // [xsp+1F4h] [xbp-FCh] BYREF
  char v28[92]; // [xsp+234h] [xbp-BCh] BYREF
  __int64 v29; // [xsp+290h] [xbp-60h]

  v29 = *(_QWORD *)(_ReadStatusReg(TPIDR_EL0) + 40);
  memset(v28, 0, sizeof(v28));
  __system_property_get();
  sub_13C74(a3, (__int64)&byte_F2A08, v28, v5);
  v6 = sub_10CE4(a1, (__int64)&xmmword_F2A10, (__int64)aJzifl);
  sub_13D7C(a1, a3, (__int64)&byte_F2A0C, v6);
  v7 = sub_10CE4(a1, (__int64)&xmmword_F2A10, (__int64)&byte_F2A30);
  sub_13D7C(a1, a3, (__int64)&byte_F2A2C, v7);
  v8 = sub_10CE4(a1, (__int64)a0M1m, (__int64)&qword_F2A60);
  sub_13D7C(a1, a3, (__int64)&byte_F2A38, v8);
  memset(v27, 0, sizeof(v27));
  __system_property_get();
  sub_13C74(a3, (__int64)&byte_F2A88, v27, v9);
  memset(v26, 0, sizeof(v26));
  __system_property_get();
  sub_13C74(a3, (__int64)&byte_F2AA0, v26, v10);
  memset(v25, 0, sizeof(v25));
  __system_property_get();
  sub_13C74(a3, (__int64)&byte_F2AC8, v25, v11);
  sub_13C74(a3, (__int64)&byte_F2ACC, (char *)&qword_F2AD0, v12);
  memset(v24, 0, sizeof(v24));
  __system_property_get();
  sub_13C74(a3, (__int64)&byte_F2AF4, v24, v13);
  memset(v23, 0, sizeof(v23));
  __system_property_get();
  sub_13C74(a3, (__int64)&byte_F2B18, v23, v14);
  memset(v22, 0, sizeof(v22));
  result = sub_8650((const char *)&xmmword_F2B20, (__int64)v22, 64, v15);
  v18 = 1952587044;
  v21 = result;
  while ( v18 > 1665409366 )
  {
    if ( v18 == 1665409367 )
    {
      v20 = v22;
      v19 = a3;
LABEL_2:
      result = sub_13C74(v19, (__int64)&byte_F2B40, v20, v17);
      v18 = -1592735553;
    }
    else if ( v21 )
    {
      v18 = 1665409367;
    }
    else
    {
      v18 = 429298492;
    }
  }
  if ( v18 != -1592735553 )
  {
    v19 = a3;
    v20 = "";
    goto LABEL_2;
  }
  return result;
}
