__int64 __fastcall sub_D5554(__int64 a1)
{
  __int64 result; // x0
  int v2; // w8
  char *v3; // x2
  __int64 v4; // x0
  bool v5; // zf
  __int64 v6; // x9
  __int64 v7; // [xsp+0h] [xbp-F0h] BYREF
  unsigned __int64 StatusReg; // [xsp+8h] [xbp-E8h]
  __int64 *v9; // [xsp+10h] [xbp-E0h]
  __int64 v10; // [xsp+18h] [xbp-D8h]
  __int128 *v11; // [xsp+20h] [xbp-D0h]
  __int64 *v12; // [xsp+28h] [xbp-C8h]
  void *v13; // [xsp+30h] [xbp-C0h]
  __int64 (__fastcall *v14)(__int128 *); // [xsp+38h] [xbp-B8h]
  __int64 (__fastcall *v15)(__int64, char *, __int64 *); // [xsp+40h] [xbp-B0h]
  __int64 v16; // [xsp+48h] [xbp-A8h]
  __int64 *v17; // [xsp+50h] [xbp-A0h]
  __int64 *v18; // [xsp+58h] [xbp-98h]
  __int64 *v19; // [xsp+60h] [xbp-90h]
  char *v20; // [xsp+68h] [xbp-88h]
  __int64 v21; // [xsp+70h] [xbp-80h] BYREF
  __int64 v22; // [xsp+78h] [xbp-78h] BYREF
  __int64 v23; // [xsp+80h] [xbp-70h] BYREF
  __int128 v24; // [xsp+88h] [xbp-68h] BYREF
  __int64 v25; // [xsp+98h] [xbp-58h]

  v10 = a1;
  StatusReg = _ReadStatusReg(TPIDR_EL0);
  v25 = *(_QWORD *)(StatusReg + 40);
  v11 = &v24;
  v24 = xmmword_EA4EA;
  v12 = &v22;
  v22 = 0;
  v23 = 0;
  result = (__int64)j__dlopen(aA7AXzaN, 2);
  v9 = &v23;
  v2 = 1230484734;
  v13 = (void *)result;
  while ( 1 )
  {
    while ( 1 )
    {
      while ( 1 )
      {
        while ( v2 <= 1116489907 )
        {
          if ( v2 > 97639791 )
          {
            if ( v2 == 97639792 )
            {
              v4 = v10;
              v3 = "";
LABEL_2:
              result = sub_13C74(v4, aBfk560r, v3);
              v2 = 1915822513;
            }
            else
            {
              if ( v2 != 191289391 )
              {
                v20[v21] = 0;
                v3 = v20;
                v4 = v10;
                goto LABEL_2;
              }
              result = j__dlclose(v13);
              v2 = -730777246;
            }
          }
          else if ( v2 == -1847447241 )
          {
            v18 = &v21;
            v6 = *v17;
            v19 = &v7;
            v20 = (char *)&v7 - ((2 * v6 + 15) & 0xFFFFFFFFFFFFFFF0LL);
            result = sub_DED20(v20, 2 * v6, &v21, v22, *v17);
            if ( (_DWORD)result )
              v2 = 97639792;
            else
              v2 = 773764532;
          }
          else if ( v2 == -730777246 )
          {
            v17 = v9;
            if ( *v9 )
              v2 = -1847447241;
            else
              v2 = 2023670159;
          }
          else
          {
            result = v15(v16, aUtgxrtdXDtxu1, v12);
            v2 = 1854815299;
          }
        }
        if ( v2 <= 1915822512 )
          break;
        if ( v2 == 1915822513 )
        {
          v2 = 1116489908;
        }
        else if ( v2 == 2023670159 )
        {
          result = sub_13C74(v10, aBfk560r, "");
          v2 = 1116489908;
        }
        else
        {
          v14 = (__int64 (__fastcall *)(__int128 *))j__dlsym(v13, (const char *)&xmmword_F80E0);
          result = (__int64)j__dlsym(v13, (const char *)&xmmword_F8100);
          v15 = (__int64 (__fastcall *)(__int64, char *, __int64 *))result;
          if ( result )
            v5 = v14 == nullptr;
          else
            v5 = 1;
          if ( v5 )
            v2 = 191289391;
          else
            v2 = 1807454927;
        }
      }
      if ( v2 <= 1807454926 )
        break;
      if ( v2 == 1807454927 )
      {
        result = v14(&v24);
        v16 = result;
        if ( result )
          v2 = -389409514;
        else
          v2 = 1854815299;
      }
      else
      {
        v2 = 191289391;
      }
    }
    if ( v2 != 1230484734 )
      return result;
    if ( v13 )
      v2 = 2130059756;
    else
      v2 = -730777246;
  }
}
