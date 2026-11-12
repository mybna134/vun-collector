__int64 __fastcall sub_28E9C(__int64 a1, __int64 a2)
{
  unsigned int v3; // w0
  _BYTE *v4; // x6
  unsigned __int8 *v5; // x8
  _BYTE *v6; // x6
  unsigned __int8 *v7; // x8
  _BYTE *v8; // x6
  unsigned __int8 *v9; // x8
  _BYTE *v10; // x3
  unsigned int v11; // w2
  _BYTE *v12; // x3
  __int64 v14; // [xsp+8h] [xbp-B8h] BYREF
  _OWORD v15[8]; // [xsp+10h] [xbp-B0h] BYREF
  char s[8]; // [xsp+98h] [xbp-28h] BYREF
  __int64 v17; // [xsp+A0h] [xbp-20h]
  __int64 v18; // [xsp+A8h] [xbp-18h]

  v18 = *(_QWORD *)(_ReadStatusReg(TPIDR_EL0) + 40);
  *(_QWORD *)s = 0;
  v17 = 0;
  v3 = sub_E89A4(a1, a2);
  sprintf(s, &byte_F3434, v3);
  v14 = 0;
  memset(v15, 0, sizeof(v15));
  sub_6630(v15, &qword_F36F8, v4, v5);
  sub_6630(v15, s, v6, v7);
  sub_6630(v15, &qword_F3708, v8, v9);
  sub_8E28((__int64)v15, (__int64)&v14, 8, v10);
  return sub_14068(a1, &v14, v11, v12);
}
