__int64 __fastcall sub_282B8(__int64 a1, __int64 a2)
{
  __int64 v2; // x26
  __int64 v4; // x0
  __int64 v5; // x1
  __int64 v6; // x2
  int v7; // w9
  int v8; // w8
  __int64 v9; // x25
  __int64 v10; // x19
  __int64 v11; // x24
  int v14; // [xsp+14h] [xbp-6Ch]
  _QWORD *v15; // [xsp+18h] [xbp-68h]
  __int64 v16; // [xsp+20h] [xbp-60h]
  __int64 v17; // [xsp+28h] [xbp-58h]

  v4 = sub_5A38();
  v7 = -1374105879;
  v14 = v4;
  while ( 1 )
  {
    while ( 1 )
    {
      while ( 1 )
      {
        while ( 1 )
        {
          v8 = v7;
          v9 = v6;
          v10 = v5;
          v11 = v4;
          if ( v7 > -315616310 )
            break;
          if ( v7 > -1638982452 )
          {
            v6 = v2;
            v7 = -2047799265;
            if ( v8 != -1638982451 )
            {
              if ( v8 == -1374105879 )
              {
                if ( v14 <= 18 )
                  v7 = 1037408939;
                else
                  v7 = -2049171321;
LABEL_2:
                v4 = v11;
                v5 = v10;
                v6 = v9;
              }
              else
              {
                v6 = v9;
                v7 = v8;
                if ( v8 == -1033276111 )
                {
                  sub_B6D0(a1);
                  sub_10C30(a1, v15);
                  v6 = 0;
                  v4 = v11;
                  v5 = v10;
                  v7 = -2047799265;
                }
              }
            }
          }
          else
          {
            if ( v7 == -2049171321 )
            {
              v15 = (_QWORD *)sub_1723C(a1, a2, (__int64)&byte_F3468);
              if ( v15 )
                v7 = 1588804960;
              else
                v7 = 1014121834;
              goto LABEL_2;
            }
            v5 = v6;
            v7 = -315616309;
            if ( v8 != -2047799265 )
            {
              sub_B6D0(a1);
              sub_10C30(a1, v15);
              v2 = 0;
              goto LABEL_15;
            }
          }
        }
        if ( v7 <= 1192851997 )
          break;
        if ( v7 == 1192851998 )
        {
          v17 = sub_BF48(a1, v15[1], v16);
          if ( v17 )
            v7 = 2015508599;
          else
            v7 = -1928785726;
          goto LABEL_2;
        }
        if ( v7 == 1588804960 )
        {
          v16 = (*(__int64 (__fastcall **)(__int64, _QWORD, __int128 *, __int128 *))(*(_QWORD *)a1 + 264LL))(
                  a1,
                  *v15,
                  &xmmword_F3470,
                  &xmmword_F2CD0);
          if ( v16 )
            v7 = 1192851998;
          else
            v7 = -1033276111;
          goto LABEL_2;
        }
        sub_10C30(a1, v15);
        v2 = v17;
LABEL_15:
        v4 = v11;
        v5 = v10;
        v6 = v9;
        v7 = -1638982451;
      }
      if ( v7 <= 1014121833 )
        break;
      if ( v7 == 1014121834 )
      {
        v5 = 0;
        v7 = -315616309;
      }
      else
      {
        v4 = 0;
        v7 = 278810201;
      }
    }
    v4 = v5;
    v7 = 278810201;
    if ( v8 != -315616309 )
    {
      v4 = v11;
      v7 = v8;
      if ( v8 == 278810201 )
        return v11;
    }
  }
}
