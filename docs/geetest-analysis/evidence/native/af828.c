__int64 __fastcall sub_AF828(__int64 a1, __int64 a2)
{
  int v3; // w8
  int v4; // w9
  _QWORD *v7; // [xsp+18h] [xbp-168h]
  bool v8; // [xsp+2Eh] [xbp-152h]
  int v9; // [xsp+44h] [xbp-13Ch]
  void *src; // [xsp+48h] [xbp-138h] BYREF
  _QWORD v11[13]; // [xsp+50h] [xbp-130h] BYREF
  _BYTE v12[32]; // [xsp+BCh] [xbp-C4h] BYREF
  char v13[32]; // [xsp+DCh] [xbp-A4h] BYREF
  _BYTE v14[32]; // [xsp+FCh] [xbp-84h] BYREF
  char v15; // [xsp+11Ch] [xbp-64h]
  __int64 v16; // [xsp+120h] [xbp-60h]

  v16 = *(_QWORD *)(_ReadStatusReg(TPIDR_EL0) + 40);
  src = nullptr;
  v7 = sub_AFBCC(&src, &qword_F7520, &src);
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  v3 = src != nullptr;
  v8 = src != nullptr;
  v4 = -1092351262;
  while ( 1 )
  {
    while ( v4 <= -152364979 )
    {
      if ( v4 == -1092351262 )
      {
        if ( !v8 || (__int64)v7 <= 0 )
          v4 = -152364978;
        else
          v4 = 1026850495;
      }
      else if ( v4 == -736646727 )
      {
        v15 = 0;
        v4 = -152364978;
      }
      else
      {
        sprintf(&v13[2 * v9], &byte_F7530, (unsigned __int8)v12[v9]);
        v4 = 1702487054;
        v3 = v9 + 1;
      }
    }
    if ( v4 == -152364978 )
      break;
    if ( v4 == 1026850495 )
    {
      memset(v12, 0, sizeof(v12));
      sub_E4574(v11, v11);
      sub_E46A4(v11, 0);
      sub_E7894((int)v11, src);
      sub_E7CB0(v11, v12);
      v3 = 0;
      v4 = 1702487054;
    }
    else
    {
      v9 = v3;
      if ( v3 >= 32 )
        v4 = -736646727;
      else
        v4 = -461321744;
    }
  }
  return sub_13C74(a1, a2, v14);
}
