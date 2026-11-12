void __fastcall sub_22488(__int64 a1, __int64 a2, __int64 a3)
{
  int v3; // w25
  __int64 v5; // x21
  int v6; // w26
  __int64 v7; // x27
  __int64 v8; // x28
  __int64 v9; // x0
  int v10; // w9
  int v11; // w8
  _BYTE *v12; // x22
  int v13; // w21
  int v14; // w8
  __int64 v15; // x23
  int v16; // w0
  __int64 v17; // [xsp+10h] [xbp-110h]
  __int64 v19; // [xsp+20h] [xbp-100h]
  __int64 v20; // [xsp+28h] [xbp-F8h]
  __int64 v21; // [xsp+30h] [xbp-F0h]
  __int64 v22; // [xsp+38h] [xbp-E8h]
  __int64 v23; // [xsp+40h] [xbp-E0h]
  __int64 v24; // [xsp+48h] [xbp-D8h]
  int v25; // [xsp+5Ch] [xbp-C4h]
  __int64 v26; // [xsp+60h] [xbp-C0h]
  int v27; // [xsp+6Ch] [xbp-B4h]
  void *v28; // [xsp+70h] [xbp-B0h]
  _QWORD *v29; // [xsp+78h] [xbp-A8h]
  void *v30; // [xsp+80h] [xbp-A0h]
  _BYTE *v31; // [xsp+88h] [xbp-98h]
  __int64 v32; // [xsp+90h] [xbp-90h]
  int v33; // [xsp+9Ch] [xbp-84h]
  _QWORD v34[6]; // [xsp+A0h] [xbp-80h] BYREF

  v5 = a1;
  v6 = 1719090223;
  v7 = 927824590;
  v34[4] = *(_QWORD *)(_ReadStatusReg(TPIDR_EL0) + 40);
  v8 = 400718119;
  v20 = sub_BB824(a1);
  v9 = (*(__int64 (__fastcall **)(__int64, __int128 *))(*(_QWORD *)v5 + 48LL))(v5, &xmmword_F2F30);
  v10 = 1217772778;
  v21 = v9;
  v19 = a3;
  v17 = v5;
  while ( 1 )
  {
    while ( 1 )
    {
      while ( 1 )
      {
        while ( 1 )
        {
          v11 = v10;
          if ( v10 > 251586572 )
            break;
          if ( v10 > -967750325 )
          {
            if ( v10 > -8558088 )
            {
              if ( v10 == -8558087 )
              {
                sub_13C74(v20, &byte_F2F48, v24);
                sub_13984(a3, &byte_F2F4C, v20);
                (*(void (__fastcall **)(__int64, __int64, __int64))(*(_QWORD *)v5 + 1360LL))(v5, v23, v24);
                v10 = -2062990531;
              }
              else
              {
                v22 = (*(__int64 (__fastcall **)(__int64, __int64, char *, __int128 *))(*(_QWORD *)v5 + 904LL))(
                        v5,
                        v21,
                        &byte_F2B7C,
                        &xmmword_F2F50);
                if ( v22 )
                  v10 = 1873906993;
                else
                  v10 = -329369564;
              }
            }
            else if ( v10 == -967750324 )
            {
              sub_B6D0(v5);
              sub_13C74(v20, &byte_F2F48, &byte_F2F24);
              sub_13984(a3, &byte_F2F4C, v20);
              v10 = 400718119;
            }
            else
            {
              sub_B6D0(v5);
              sub_13C74(v20, &byte_F2F48, &byte_F2F24);
              sub_13984(a3, &byte_F2F4C, v20);
              v10 = 1719090223;
            }
          }
          else if ( v10 > -1373234964 )
          {
            if ( v10 == -1373234963 )
            {
              (*(void (__fastcall **)(__int64, __int64, __int64))(*(_QWORD *)v5 + 1360LL))(v5, v23, v24);
              (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)v5 + 184LL))(v5, v21);
              v10 = -2062990531;
            }
            else
            {
              sub_B6D0(v5);
              sub_13C74(v20, &byte_F2F48, &byte_F2F24);
              sub_13984(a3, &byte_F2F4C, v20);
              v10 = 927824590;
            }
          }
          else
          {
            v10 = 927824590;
            if ( v11 != -2062990531 )
            {
              v25 = v3;
              if ( v3 >= 4 )
                v10 = -1373234963;
              else
                v10 = 251586573;
            }
          }
        }
        if ( v10 <= 927824589 )
          break;
        if ( v10 > 1719090222 )
        {
          v10 = 400718119;
          if ( v11 != 1719090223 )
          {
            v23 = sub_CEE8(v5, v21, v22, a2);
            if ( v23 )
              v10 = 526727662;
            else
              v10 = -1099497286;
          }
        }
        else
        {
          v10 = 1719090223;
          if ( v11 != 927824590 )
          {
            if ( v21 )
              v10 = 112622256;
            else
              v10 = -967750324;
          }
        }
      }
      if ( v10 <= 526727661 )
        break;
      if ( v10 == 526727662 )
      {
        v24 = (*(__int64 (__fastcall **)(__int64, __int64, _QWORD))(*(_QWORD *)v5 + 1352LL))(v5, v23, 0);
        if ( sub_75D4(v24, &byte_F2F80) )
          v10 = 620869705;
        else
          v10 = -8558087;
      }
      else
      {
        v12 = (_BYTE *)v24;
        v13 = 0;
        v14 = 2046320470;
        v15 = v24;
        while ( 1 )
        {
          while ( 1 )
          {
            while ( 1 )
            {
              while ( v14 > 1552182778 )
              {
                if ( v14 <= 1813702232 )
                {
                  if ( v14 == 1552182779 )
                  {
                    LODWORD(a3) = 0;
                    v6 = v3;
                    v8 = v26 + 1;
                    v7 = v26 + 1;
                    v14 = 532125410;
                  }
                  else
                  {
                    sub_7070(v28, v32, v27);
                    *(_BYTE *)(*v29 + v27) = 0;
                    v3 = v33 + 1;
                    v14 = 1552182779;
                  }
                }
                else if ( v14 == 1813702233 )
                {
                  v26 = sub_7504(v31, 124);
                  if ( v26 )
                    v14 = -2108564121;
                  else
                    v14 = 2029869753;
                }
                else if ( v14 == 2029869753 )
                {
                  v16 = sub_5914(v31);
                  v30 = malloc(v16 + 1);
                  v34[v33] = v30;
                  if ( v30 )
                    v14 = -1249497757;
                  else
                    v14 = -1131594108;
                }
                else
                {
                  v31 = v12;
                  v32 = v15;
                  v33 = v13;
                  if ( ((*v12 != 0) & ~((*v12 != 0) ^ (v13 < 4))) != 0 )
                    v14 = 1813702233;
                  else
                    v14 = -31396861;
                }
              }
              if ( v14 > -1131594109 )
                break;
              if ( v14 == -2108564121 )
              {
                v27 = v26 - v32;
                v28 = malloc((int)v26 - (int)v32 + 1);
                v29 = &v34[v33];
                *v29 = v28;
                v3 = v33;
                if ( v28 )
                  v14 = 1714001093;
                else
                  v14 = 1552182779;
              }
              else
              {
                sub_513C(v30, v31);
                v14 = -1131594108;
              }
            }
            if ( v14 != -1131594108 )
              break;
            v6 = v33;
            v7 = v32;
            v8 = (__int64)v31;
            LODWORD(a3) = 3;
            v14 = 532125410;
          }
          if ( v14 != 532125410 )
            break;
          if ( (_DWORD)a3 )
            v14 = -31396861;
          else
            v14 = 2046320470;
          v12 = (_BYTE *)v8;
          v15 = v7;
          v13 = v6;
        }
        sub_13C74(v20, &byte_F2F14, v34[0]);
        sub_13C74(v20, &byte_F2F84, v34[1]);
        sub_13C74(v20, &byte_F2F88, v34[2]);
        sub_13C74(v20, &byte_F2F8C, v34[3]);
        sub_13C74(v20, &byte_F2F48, &byte_F2F20);
        a3 = v19;
        sub_13984(v19, &byte_F2F4C, v20);
        v5 = v17;
        v3 = 0;
        v10 = -1526112541;
        v6 = 1719090223;
        v7 = 927824590;
        v8 = 400718119;
      }
    }
    if ( v10 != 251586573 )
      break;
    free((void *)v34[v25]);
    v3 = v25 + 1;
    v10 = -1526112541;
  }
}
