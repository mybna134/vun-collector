void *__fastcall sub_29AC4(__int64 a1)
{
  void *result; // x0
  int v2; // w8
  int v3; // w20
  int v4; // w27
  int v5; // w10
  int v6; // w9
  __int64 v8; // [xsp+20h] [xbp-3E0h]
  _QWORD *v9; // [xsp+28h] [xbp-3D8h]
  int v10; // [xsp+34h] [xbp-3CCh]
  int v11; // [xsp+38h] [xbp-3C8h]
  int v12; // [xsp+3Ch] [xbp-3C4h]
  _QWORD v13[110]; // [xsp+40h] [xbp-3C0h] BYREF

  v13[108] = *(_QWORD *)(_ReadStatusReg(TPIDR_EL0) + 40);
  result = memcpy(v13, &off_F1310, 0x360u);
  v3 = 0;
  v4 = 0;
  while ( 1 )
  {
    v5 = -716869556;
    while ( 1 )
    {
      while ( 1 )
      {
        v6 = v5;
        if ( v5 > -716869557 )
          break;
        if ( v5 > -1583274251 )
        {
          v5 = 1003342884;
          if ( v6 != -1583274250 )
          {
            v5 = v6;
            if ( v6 == -755820798 )
            {
              v9 = &v13[v8];
              result = (void *)sub_8630(*v9);
              v2 = v11;
              if ( (_DWORD)result )
                v5 = -472566333;
              else
                v5 = -1796366836;
            }
          }
        }
        else
        {
          v5 = 1003342884;
          if ( v6 != -2116774002 )
          {
            v12 = v2;
            if ( v2 <= 2 )
              v5 = 1818130948;
            else
              v5 = -2116774002;
          }
        }
      }
      if ( v5 > 1003342883 )
        break;
      if ( v5 == -716869556 )
      {
        v10 = v3;
        v11 = v4;
        v8 = v3;
        if ( (unsigned __int64)v3 >= 0x6C )
          v5 = -1583274250;
        else
          v5 = -755820798;
      }
      else
      {
        result = (void *)sub_14068(a1, *v9);
        v5 = -1796366836;
        v2 = v11 + 1;
      }
    }
    if ( v5 != 1818130948 )
      break;
    v4 = v12;
    v3 = v10 + 1;
  }
  return result;
}
