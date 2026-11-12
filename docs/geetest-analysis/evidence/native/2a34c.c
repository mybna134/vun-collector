__int64 __fastcall sub_2A34C(__int64 a1, __int64 a2)
{
  unsigned int v3; // w0
  _BYTE *v4; // x6
  _BYTE *v5; // x6
  unsigned __int8 *v6; // x8
  _BYTE *v7; // x6
  unsigned __int8 *v8; // x8
  __int64 result; // x0
  unsigned int v10; // w2
  _BYTE *v11; // x3
  int v12; // w8
  int v13; // [xsp+14h] [xbp-9Ch]
  char v14[64]; // [xsp+18h] [xbp-98h] BYREF
  _QWORD s[3]; // [xsp+58h] [xbp-58h] BYREF

  s[2] = *(_QWORD *)(_ReadStatusReg(TPIDR_EL0) + 40);
  v3 = sub_E89A4(a1, a2);
  s[0] = 0;
  s[1] = 0;
  sprintf((char *)s, &byte_F3434, v3);
  memset(v14, 0, sizeof(v14));
  sub_6630(v14, &byte_F3438, v4, (unsigned __int8 *)v14);
  sub_6630(v14, s, v5, v6);
  sub_6630(v14, &byte_F3440, v7, v8);
  result = sub_29F1C(v14, nullptr, 0x100u);
  v13 = result;
  v12 = 648462838;
  while ( 1 )
  {
    while ( v12 <= -1608941542 )
    {
      if ( v12 == -2080296836 )
      {
        sub_14068(a1, aL, v10, v11);
        v12 = -1608941541;
        result = 1;
      }
      else
      {
        result = 0;
        v12 = -1608941541;
      }
    }
    if ( v12 == -1608941541 )
      break;
    if ( v13 )
      v12 = -2080296836;
    else
      v12 = -1639953634;
  }
  return result;
}
