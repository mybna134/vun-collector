__int64 __fastcall sub_4ABCC(__int64 a1, __int64 a2)
{
  int v2; // w21
  int v3; // w27
  __int64 v5; // x0
  unsigned int v6; // w8
  int v7; // w10
  int v8; // w9
  unsigned int v9; // w22
  int v10; // w23
  __int64 v12; // [xsp+8h] [xbp-68h]
  __int64 v13; // [xsp+10h] [xbp-60h]
  __int64 v14; // [xsp+18h] [xbp-58h]

  v12 = sub_1723C(a1, a2, &byte_F6A30);
  v5 = (*(__int64 (__fastcall **)(__int64, __int128 *))(*(_QWORD *)a1 + 48LL))(a1, &xmmword_F6E80);
  v7 = 335952316;
  v13 = v5;
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
          if ( v7 <= 996757323 )
            break;
          if ( v7 <= 1596138515 )
          {
            if ( v7 == 996757324 )
            {
              sub_B6D0(a1);
              sub_10C30(a1, v12);
              v2 = 1;
              v6 = v9;
            }
            else
            {
              v2 = v3;
            }
            v7 = 1771224664;
          }
          else if ( v7 == 1596138516 )
          {
            v14 = (*(__int64 (__fastcall **)(__int64, __int64, char *, char *))(*(_QWORD *)a1 + 264LL))(
                    a1,
                    v13,
                    aPrcdZdcvcr7,
                    &byte_F6B38);
            if ( v14 )
              v7 = 335421940;
            else
              v7 = 996757324;
            v6 = v9;
          }
          else
          {
            v6 = v2;
            v7 = -3982305;
            if ( v8 != 1771224664 )
            {
              v3 = 0;
              goto LABEL_2;
            }
          }
        }
        if ( v7 > -3982306 )
          break;
        if ( v7 == -634426017 )
        {
          v6 = 1;
          v7 = -3982305;
        }
        else
        {
          v3 = 1;
LABEL_2:
          v6 = v9;
          v7 = 1194507104;
        }
      }
      if ( v7 != 335421940 )
        break;
      v10 = sub_C4A8(a1, *(_QWORD *)(v12 + 8), v14);
      sub_B6D0(a1);
      sub_10C30(a1, v12);
      if ( v10 == 1 )
        v7 = 1869961895;
      else
        v7 = -605807749;
      v6 = v9;
    }
    if ( v7 != 335952316 )
      return v6;
    if ( v12 )
      v7 = 1596138516;
    else
      v7 = -634426017;
  }
}
