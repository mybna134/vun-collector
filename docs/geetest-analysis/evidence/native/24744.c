__int64 __fastcall sub_24744(__int64 a1, __int64 a2, __int64 a3, __int64 a4)
{
  int v4; // w24
  __int64 v6; // x0
  int v7; // w8
  int v8; // w10
  int v9; // w11
  int v10; // w9
  int v11; // w19
  int v12; // w20
  int v13; // w9
  bool v14; // zf
  int v15; // w8
  struct tm *v16; // x0
  __int64 v17; // x0
  int v18; // w8
  unsigned int v22; // [xsp+18h] [xbp-E8h]
  int v23; // [xsp+1Ch] [xbp-E4h]
  _QWORD *v24; // [xsp+20h] [xbp-E0h]
  _QWORD *v25; // [xsp+28h] [xbp-D8h]
  __int64 v26; // [xsp+30h] [xbp-D0h]
  _QWORD *v27; // [xsp+38h] [xbp-C8h]
  __int64 v28; // [xsp+40h] [xbp-C0h]
  __int64 v29; // [xsp+48h] [xbp-B8h]
  __int64 v30; // [xsp+50h] [xbp-B0h]
  time_t timer; // [xsp+58h] [xbp-A8h] BYREF
  char s[16]; // [xsp+60h] [xbp-A0h] BYREF
  __int128 v33; // [xsp+70h] [xbp-90h]
  __int128 v34; // [xsp+80h] [xbp-80h]
  __int128 v35; // [xsp+90h] [xbp-70h]
  __int64 v36; // [xsp+A0h] [xbp-60h]

  v36 = *(_QWORD *)(_ReadStatusReg(TPIDR_EL0) + 40);
  v6 = sub_18944(a1);
  v9 = -580089211;
  v24 = (_QWORD *)v6;
  while ( 1 )
  {
    while ( 1 )
    {
      while ( 1 )
      {
        while ( 1 )
        {
          v10 = v9;
          v11 = v8;
          v12 = v7;
          if ( v9 > -95192620 )
            break;
          if ( v9 > -999625722 )
          {
            if ( v9 > -580089212 )
            {
              if ( v9 == -580089211 )
              {
                v13 = 804189925;
                v14 = v24 == nullptr;
                v15 = -1886267273;
              }
              else
              {
                v30 = (*(__int64 (__fastcall **)(__int64, _QWORD, __int64))(*(_QWORD *)a1 + 808LL))(a1, *v27, v29);
                v14 = (*(unsigned __int8 (__fastcall **)(__int64))(*(_QWORD *)a1 + 1824LL))(a1) == 0;
                v15 = -68880733;
                v13 = 1451989507;
              }
              goto LABEL_34;
            }
            if ( v9 != -999625721 )
            {
              v18 = v23;
              goto LABEL_38;
            }
            sub_B6D0(a1);
            sub_10C30(a1, v24);
            v8 = -1;
            v7 = v12;
            v9 = 1654321011;
          }
          else if ( v9 > -1537374936 )
          {
            if ( v9 == -1537374935 )
            {
              sub_B6D0(a1);
              sub_10C30(a1, v24);
              v23 = -1;
            }
            else
            {
              v23 = v7;
            }
            v7 = v12;
            v8 = v11;
            v9 = -951295282;
          }
          else
          {
            if ( v9 != -2102492353 )
            {
              v25 = v24;
              v26 = (*(__int64 (__fastcall **)(__int64, _QWORD, __int64 *, __int128 *))(*(_QWORD *)a1 + 752LL))(
                      a1,
                      *v24,
                      &qword_F3168,
                      &xmmword_F3150);
              v13 = -1537374935;
              v14 = v26 == 0;
              v15 = 1875972239;
LABEL_34:
              if ( v14 )
                v9 = v13;
              else
                v9 = v15;
              goto LABEL_2;
            }
            sub_B6D0(a1);
            sub_10C30(a1, v24);
            v7 = -1;
            v8 = v11;
            v9 = -1012152070;
          }
        }
        if ( v9 <= 1337403527 )
          break;
        if ( v9 > 1654321010 )
        {
          v7 = v8;
          v9 = -1012152070;
          if ( v10 != 1654321011 )
          {
            v27 = v24 + 1;
            v28 = (*(__int64 (__fastcall **)(__int64, _QWORD, __int64))(*(_QWORD *)a1 + 760LL))(a1, v24[1], v26);
            if ( v28 )
              v9 = -95192619;
            else
              v9 = -2102492353;
            goto LABEL_2;
          }
        }
        else
        {
          v8 = v4;
          v9 = 1654321011;
          if ( v10 != 1337403528 )
          {
            v34 = 0u;
            v35 = 0u;
            timer = v30 / 1000;
            *(_OWORD *)s = 0u;
            v33 = 0u;
            v16 = gmtime(&timer);
            strftime(s, 0x40u, (const char *)&xmmword_F3180, v16);
            sub_13C74(a4, &byte_F3194, s);
            sub_13D7C(a1, a4, &byte_F319C, v28);
            v17 = sub_24CD4(a1, a2, v24);
            sub_13D7C(a1, a4, &byte_F31A4, v17);
            sub_10C30(a1, v24);
            v4 = 0;
            goto LABEL_18;
          }
        }
      }
      if ( v9 > 773660055 )
        break;
      if ( v9 == -95192619 )
      {
        v29 = (*(__int64 (__fastcall **)(__int64, _QWORD, __int128 *, char *))(*(_QWORD *)a1 + 752LL))(
                a1,
                *v25,
                &xmmword_F2E20,
                &byte_F2E34);
        if ( v29 )
          v9 = -547747353;
        else
          v9 = -999625721;
LABEL_2:
        v7 = v12;
        v8 = v11;
      }
      else
      {
        (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 128LL))(a1);
        (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 136LL))(a1);
        sub_10C30(a1, v24);
        v4 = -1;
LABEL_18:
        v7 = v12;
        v8 = v11;
        v9 = 1337403528;
      }
    }
    if ( v9 != 804189925 )
      return v22;
    v18 = -1;
LABEL_38:
    v22 = v18;
    v7 = v12;
    v9 = 773660056;
  }
}
