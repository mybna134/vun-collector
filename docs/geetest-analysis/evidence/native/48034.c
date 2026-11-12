__int64 __fastcall sub_48034(__int64 a1, __int64 a2, __int64 a3)
{
  long double v3; // q8
  __int64 v6; // x0
  int v7; // w8
  int v8; // w27
  long double v9; // q0
  __int64 v10; // x0
  __int64 v11; // x0
  __int64 v12; // x1
  __int64 v13; // x3
  __int64 v14; // x27
  __int64 v15; // x0
  __int64 v16; // x27
  unsigned int v18; // [xsp+Ch] [xbp-94h]
  _QWORD *v19; // [xsp+10h] [xbp-90h]
  _QWORD *v20; // [xsp+18h] [xbp-88h]
  __int64 v21; // [xsp+20h] [xbp-80h]
  __int64 v22; // [xsp+28h] [xbp-78h]
  __int64 v23; // [xsp+30h] [xbp-70h]
  __int64 v24; // [xsp+38h] [xbp-68h]
  __int64 v25; // [xsp+48h] [xbp-58h]

  v6 = sub_4852C();
  *(_QWORD *)&v3 = -1.0;
  v7 = 1468666919;
  v19 = (_QWORD *)v6;
  while ( 1 )
  {
    while ( 1 )
    {
      while ( 1 )
      {
        while ( v7 <= 1087585551 )
        {
          if ( v7 > -220616215 )
          {
            if ( v7 > 678428136 )
            {
              if ( v7 == 678428137 )
              {
                v25 = (*(__int64 (__fastcall **)(__int64, _QWORD, __int64 *, char *))(*(_QWORD *)a1 + 264LL))(
                        a1,
                        *v20,
                        &qword_F6B30,
                        &byte_F6B38);
                if ( v25 )
                  v7 = -1160040226;
                else
                  v7 = 1731555985;
              }
              else
              {
                v23 = sub_BF48(a1, v19[1], v22);
                v24 = v23;
                if ( v23 )
                  v7 = -220616214;
                else
                  v7 = 1840479919;
              }
            }
            else if ( v7 == -220616214 )
            {
              v14 = sub_12A7C(a1, v24);
              v15 = sub_CF84(a1, v14, aLn, "");
              sub_13D7C(a1, a3, aGgP4, v15);
              (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v23);
              (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v14);
              v7 = 626583371;
            }
            else
            {
              v7 = 678428137;
            }
          }
          else if ( v7 > -928794306 )
          {
            if ( v7 == -928794305 )
            {
              v16 = sub_BF48(a1, v19[1], v21);
              sub_B6D0(a1);
              v11 = a1;
              v12 = a3;
              v13 = v16;
              goto LABEL_37;
            }
            v18 = -1;
            v7 = 2043220739;
          }
          else
          {
            if ( v7 != -1290874518 )
            {
              v8 = sub_C4A8(a1, v19[1], v25);
              sub_B6D0(a1);
              *(double *)&v9 = (double)v8;
              v10 = a3;
              goto LABEL_2;
            }
            sub_B6D0(a1);
            v11 = a1;
            v12 = a3;
            v13 = 0;
LABEL_37:
            sub_13D7C(v11, v12, &byte_F6B0C, v13);
            v7 = 1668655624;
          }
        }
        if ( v7 > 1668655623 )
          break;
        if ( v7 > 1466175922 )
        {
          if ( v7 == 1466175923 )
          {
            v20 = v19;
            v21 = (*(__int64 (__fastcall **)(__int64, _QWORD, __int64 *, __int128 *))(*(_QWORD *)a1 + 264LL))(
                    a1,
                    *v19,
                    &qword_F6B00,
                    &xmmword_F65F0);
            if ( v21 )
              v7 = -928794305;
            else
              v7 = -1290874518;
          }
          else if ( v19 )
          {
            v7 = 1466175923;
          }
          else
          {
            v7 = -480173043;
          }
        }
        else if ( v7 == 1087585552 )
        {
          sub_B6D0(a1);
          sub_13D7C(a1, a3, aGgP4, 0);
          v7 = 678428137;
        }
        else
        {
          sub_10C30(a1, v19);
          v18 = 0;
          v7 = 2043220739;
        }
      }
      if ( v7 > 1840479918 )
        break;
      if ( v7 == 1668655624 )
      {
        v22 = (*(__int64 (__fastcall **)(__int64, _QWORD, __int64 *, __int128 *))(*(_QWORD *)a1 + 264LL))(
                a1,
                *v20,
                &qword_F6B18,
                &xmmword_F65F0);
        if ( v22 )
          v7 = 935613008;
        else
          v7 = 1087585552;
      }
      else
      {
        sub_B6D0(a1);
        v10 = a3;
        v9 = v3;
LABEL_2:
        sub_BAB9C(v10, &byte_F6B3C, v9);
        v7 = 1293569568;
      }
    }
    if ( v7 != 1840479919 )
      return v18;
    sub_B6D0(a1);
    sub_13D7C(a1, a3, aGgP4, 0);
    v7 = 626583371;
  }
}
