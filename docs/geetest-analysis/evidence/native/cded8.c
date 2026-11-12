__int64 __fastcall sub_CDED8(__int64 a1, __int64 a2, __int64 a3, _BYTE *a4)
{
  int v7; // w0
  int v8; // w8
  bool v9; // zf
  int v10; // w9
  __int64 *v11; // x0
  __int64 *v12; // x1
  int v13; // w9
  bool v14; // zf
  __int64 *v15; // x0
  __int64 *v16; // x1
  __int64 *v17; // x0
  __int64 *v18; // x1
  int v19; // w8
  _BYTE *v20; // x6
  unsigned __int8 *v21; // x8
  __int64 v22; // x26
  __int64 v23; // x27
  int v24; // w0
  int v27; // [xsp+14h] [xbp-50Ch]
  int v28; // [xsp+18h] [xbp-508h]
  unsigned int v29; // [xsp+1Ch] [xbp-504h]
  __int64 v30; // [xsp+20h] [xbp-500h]
  __int64 v31; // [xsp+28h] [xbp-4F8h]
  int v32; // [xsp+34h] [xbp-4ECh]
  __int64 v33; // [xsp+38h] [xbp-4E8h]
  _BYTE *v34; // [xsp+48h] [xbp-4D8h]
  char *nptr; // [xsp+58h] [xbp-4C8h]
  _BYTE *v36; // [xsp+68h] [xbp-4B8h]
  _BYTE v37[512]; // [xsp+70h] [xbp-4B0h] BYREF
  _QWORD v38[2]; // [xsp+270h] [xbp-2B0h] BYREF
  _QWORD v39[2]; // [xsp+280h] [xbp-2A0h] BYREF
  _QWORD v40[2]; // [xsp+290h] [xbp-290h] BYREF
  _BYTE v41[512]; // [xsp+2A0h] [xbp-280h] BYREF
  __int64 v42; // [xsp+4A0h] [xbp-80h] BYREF
  __int64 v43; // [xsp+4A8h] [xbp-78h]
  char s[16]; // [xsp+4B0h] [xbp-70h] BYREF
  __int64 v45; // [xsp+4C0h] [xbp-60h]

  v45 = *(_QWORD *)(_ReadStatusReg(TPIDR_EL0) + 40);
  v30 = sub_14D1C();
  v31 = sub_150EC(a1, v30, &byte_F7848);
  v7 = sub_167AC(a1, v31);
  v8 = 1796037098;
  v32 = v7;
  do
  {
    while ( 1 )
    {
LABEL_12:
      if ( v8 > 991699496 )
      {
        if ( v8 <= 1454805227 )
        {
          if ( v8 > 1150233673 )
          {
            if ( v8 != 1150233674 )
            {
              if ( v8 == 1225989143 )
              {
                v9 = (unsigned int)sub_5914(a4) == 0;
                v8 = -1823844456;
                v10 = 578591456;
              }
              else
              {
                memset(v41, 0, sizeof(v41));
                v34 = v41;
                v9 = (unsigned int)sub_8650(&xmmword_F7980, v41, 512) == 0;
                v8 = 1225989143;
                v10 = -2068372582;
              }
              goto LABEL_100;
            }
LABEL_69:
            sub_CD5EC(&qword_F78D0, &qword_F79C0, &byte_F79CC);
            sub_6630(nptr, &byte_F79CC, v20, v21);
            goto LABEL_89;
          }
          if ( v8 == 991699497 )
          {
            sub_513C(a3, v36);
            sub_154B8(a1, v30, &byte_F7848, a3);
            sub_CD5EC(&qword_F7880, &qword_F7888, a3);
            sub_CD5EC(&byte_F7898, &qword_F78A0, a3);
            sub_CD5EC(&qword_F78D0, &qword_F78D8, a3);
            sub_CD88C(a3);
            v28 = 1;
LABEL_97:
            v8 = -977500878;
            goto LABEL_3;
          }
          v14 = (unsigned int)sub_CCF28(a1, &xmmword_F7800, a3, a4) == 0;
          v8 = -1346017068;
          v13 = 329793363;
        }
        else
        {
          if ( v8 > 1824682345 )
          {
            if ( v8 != 1824682346 )
            {
              if ( v8 != 1968371582 )
              {
                v19 = v27;
                goto LABEL_2;
              }
              sub_154B8(a1, v30, &byte_F7848, a3);
              sub_CD5EC(&qword_F7880, &qword_F7888, a3);
              sub_CD5EC(&byte_F7898, &qword_F78A0, a3);
              v11 = &qword_F78D0;
              v12 = &qword_F78D8;
LABEL_107:
              sub_CD5EC(v11, v12, a3);
              v17 = (__int64 *)&xmmword_F7940;
              v18 = &qword_F7958;
LABEL_108:
              sub_CD5EC(v17, v18, a3);
LABEL_109:
              v19 = 1;
LABEL_2:
              v29 = v19;
              v8 = -1888503229;
              goto LABEL_3;
            }
            v9 = (unsigned int)sub_CCF28(a1, &xmmword_F7760, a3, a4) == 0;
            v8 = -343654743;
            v10 = -307106328;
            goto LABEL_100;
          }
          if ( v8 == 1454805228 )
            goto LABEL_68;
          if ( v8 == 1541274480 )
          {
            sub_154B8(a1, v30, &byte_F7848, a3);
            goto LABEL_109;
          }
          v13 = 262023557;
          v14 = v32 == 0;
          v8 = -1886218306;
        }
        goto LABEL_91;
      }
      if ( v8 > 358894109 )
        break;
      if ( v8 <= 267960239 )
      {
        if ( v8 == 243453428 )
        {
LABEL_68:
          v29 = 0;
          v8 = -1888503229;
          goto LABEL_3;
        }
        v33 = (*(__int64 (__fastcall **)(__int64, __int64, _QWORD))(*(_QWORD *)a1 + 1352LL))(a1, v31, 0);
        *(_OWORD *)s = xmmword_EA378;
        v42 = 0;
        v43 = 0;
        sub_7AE4(&v42, s, 16);
        v9 = (unsigned int)sub_4AAC(a1, v33, a4, &v42, &v42, &byte_F7688) == 0;
        v8 = -1522731282;
        v10 = 267960240;
        goto LABEL_100;
      }
      if ( v8 == 267960240 )
      {
        sub_513C(a3, v33);
        (*(void (__fastcall **)(__int64, __int64, __int64))(*(_QWORD *)a1 + 1360LL))(a1, v31, v33);
        (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v31);
        (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v30);
        v27 = 1;
        goto LABEL_87;
      }
      if ( v8 == 290595076 )
      {
        v14 = (unsigned int)sub_CCF28(a1, &xmmword_F7740, a3, a4) == 0;
        v8 = 195634320;
        v13 = 1824682346;
      }
      else
      {
        v14 = (unsigned int)sub_CCF28(a1, &xmmword_F7830, a3, a4) == 0;
        v8 = -310814394;
        v13 = 959795227;
      }
LABEL_91:
      if ( v14 )
        v8 = v13;
      if ( v8 <= 243453427 )
        goto LABEL_3;
    }
    if ( v8 <= 578591455 )
    {
      if ( v8 == 358894110 )
      {
        v28 = 0;
        goto LABEL_97;
      }
      if ( v8 != 363991920 )
      {
        v9 = (unsigned int)sub_CCF28(a1, &xmmword_F7720, a3, a4) == 0;
        v8 = 290595076;
        v10 = 1541274480;
        goto LABEL_100;
      }
      sub_154B8(a1, v30, &byte_F7848, a3);
      sub_CD5EC(&qword_F7880, &qword_F7888, a3);
      sub_CD5EC(&byte_F7898, &qword_F78A0, a3);
      sub_CD5EC(&qword_F78D0, &qword_F78D8, a3);
      v17 = &qword_F78E8;
      v18 = &qword_F78F8;
      goto LABEL_108;
    }
    if ( v8 == 578591456 )
    {
      v10 = -1835708635;
      v9 = *a4 == 0;
      v8 = -1823844456;
      goto LABEL_100;
    }
    if ( v8 == 605845812 )
      goto LABEL_69;
    if ( (unsigned int)sub_CDA3C(a1, a3, a4) )
      v8 = -938960938;
    else
      v8 = 1341257444;
  }
  while ( v8 > 243453427 );
  while ( 1 )
  {
LABEL_3:
    while ( v8 > -977500879 )
    {
      if ( v8 <= -461287433 )
      {
        if ( v8 <= -938960939 )
        {
          if ( v8 == -977500878 )
          {
            v19 = v28;
            goto LABEL_2;
          }
          v14 = (unsigned int)sub_55EC(nptr) == 0;
          v8 = -17420962;
          v13 = 1150233674;
        }
        else
        {
          if ( v8 == -938960938 )
          {
            sub_154B8(a1, v30, &byte_F7848, a3);
            sub_CD5EC(&qword_F7880, &qword_F7888, a3);
            sub_CD5EC(&byte_F7898, &qword_F78A0, a3);
            sub_CD5EC(&qword_F78D0, &qword_F78D8, a3);
            sub_CD5EC(&qword_F78B0, &qword_F78C0, a3);
            sub_CD5EC(&qword_F78E8, &qword_F78F8, a3);
            sub_CD5EC(aHgmFMMhHDy, &qword_F7928, a3);
            v15 = (__int64 *)&xmmword_F7940;
            v16 = &qword_F7958;
            goto LABEL_78;
          }
          if ( v8 == -786502175 )
          {
            sub_154B8(a1, v30, &byte_F7848, a3);
            sub_CD5EC(&qword_F7880, &qword_F7888, a3);
            sub_CD5EC(&byte_F7898, &qword_F78A0, a3);
            sub_CD5EC(&qword_F78D0, &qword_F78D8, a3);
            v17 = (__int64 *)aHgmFMMhHDy;
            v18 = &qword_F7928;
            goto LABEL_108;
          }
          memset(v37, 0, sizeof(v37));
          v36 = v37;
          v14 = (unsigned int)sub_CD178(a1, v30, v37, a4, nptr) == 0;
          v8 = 991699497;
          v13 = 358894110;
        }
        goto LABEL_91;
      }
      if ( v8 > -307106329 )
      {
        if ( v8 == -307106328 )
        {
          sub_154B8(a1, v30, &byte_F7848, a3);
          sub_CD5EC(&qword_F7880, &qword_F7888, a3);
          sub_CD5EC(&byte_F7898, &qword_F78A0, a3);
          v17 = &qword_F78B0;
          v18 = &qword_F78C0;
          goto LABEL_108;
        }
        if ( v8 != -17420962 )
        {
          sub_154B8(a1, v30, &byte_F7848, a3);
          v17 = &qword_F7880;
          v18 = &qword_F7888;
          goto LABEL_108;
        }
        v24 = atoi(nptr);
        memset(s, 0, sizeof(s));
        sprintf(s, &byte_F79BC, (unsigned int)(v24 + 1));
        sub_CD5EC(&qword_F78D0, &qword_F79C0, s);
        sub_513C(nptr, s);
LABEL_89:
        v8 = -694056620;
      }
      else
      {
        if ( v8 == -461287432 )
        {
          v14 = (unsigned int)sub_CCF28(a1, &xmmword_F77D0, a3, a4) == 0;
          v8 = 1968371582;
          v13 = 1141065859;
          goto LABEL_91;
        }
        if ( v8 != -343654743 )
        {
          sub_154B8(a1, v30, &byte_F7848, a3);
          sub_CD5EC(&qword_F7880, &qword_F7888, a3);
          sub_CD5EC(&byte_F7898, &qword_F78A0, a3);
          sub_CD5EC(&qword_F78D0, &qword_F78D8, a3);
          sub_CD5EC(&qword_F78B0, &qword_F78C0, a3);
          sub_CD5EC(&qword_F78E8, &qword_F78F8, a3);
          v11 = (__int64 *)aHgmFMMhHDy;
          v12 = &qword_F7928;
          goto LABEL_107;
        }
        v9 = (unsigned int)sub_CCF28(a1, &xmmword_F7780, a3, a4) == 0;
        v8 = -1573879267;
        v10 = 363991920;
LABEL_100:
        if ( !v9 )
          v8 = v10;
        if ( v8 > 243453427 )
          goto LABEL_12;
      }
    }
    if ( v8 <= -1835708636 )
      break;
    if ( v8 > -1573879268 )
    {
      if ( v8 == -1573879267 )
      {
        v14 = (unsigned int)sub_CCF28(a1, &xmmword_F77B0, a3, a4) == 0;
        v8 = -786502175;
        v13 = -461287432;
        goto LABEL_91;
      }
      if ( v8 != -1522731282 )
      {
        sub_154B8(a1, v30, &byte_F7848, a3);
        sub_CD5EC(&qword_F7880, &qword_F7888, a3);
        sub_CD5EC(&byte_F7898, &qword_F78A0, a3);
        v15 = &qword_F78D0;
        v16 = &qword_F78D8;
LABEL_78:
        sub_CD5EC(v15, v16, a3);
        v17 = (__int64 *)&byte_F7968;
        v18 = &qword_F7970;
        goto LABEL_108;
      }
      (*(void (__fastcall **)(__int64, __int64, __int64))(*(_QWORD *)a1 + 1360LL))(a1, v31, v33);
      (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v31);
      (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v30);
      v27 = 0;
LABEL_87:
      v8 = 2062464355;
      goto LABEL_12;
    }
    if ( v8 == -1835708635 )
    {
      if ( (int)sub_5914(a4) >= 20 )
        v8 = -1957195012;
      else
        v8 = -1823844456;
    }
    else if ( v8 == -1823844456 )
    {
      v22 = sub_C544(a1);
      v23 = (*(__int64 (__fastcall **)(__int64, __int64, _QWORD))(*(_QWORD *)a1 + 1352LL))(a1, v22, 0);
      sub_513C(a4, v23);
      (*(void (__fastcall **)(__int64, __int64, __int64))(*(_QWORD *)a1 + 1360LL))(a1, v22, v23);
      (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v22);
      v8 = -1957195012;
    }
    else
    {
      if ( (int)sub_5A38() <= 28 )
        v8 = 398645128;
      else
        v8 = -1851548953;
      if ( v8 > 243453427 )
        goto LABEL_12;
    }
  }
  if ( v8 <= -1888503230 )
  {
    if ( v8 != -2068372582 )
    {
      v38[0] = 0;
      v38[1] = 0;
      nptr = (char *)v38;
      v14 = (unsigned int)sub_8650(&xmmword_F79A0, v38, 16) == 0;
      v8 = -944464170;
      v13 = 605845812;
      goto LABEL_91;
    }
    *(_OWORD *)s = xmmword_EA388;
    v42 = 0;
    v43 = 0;
    sub_7AE4(&v42, s, 16);
    memset(v40, 94, sizeof(v40));
    v39[1] = 0;
    v39[0] = 0;
    sub_7AE4(v39, v40, 16);
    sub_4AAC(a1, v34, a4, &v42, v39, &byte_F7688);
    v8 = 1225989143;
    goto LABEL_12;
  }
  if ( v8 != -1888503229 )
  {
    if ( v8 == -1886218306 )
    {
      v14 = (unsigned int)sub_20930(a1, a2, &xmmword_F7850) == 0;
      v8 = -1795002845;
      v13 = 243453428;
    }
    else
    {
      v14 = (unsigned __int8)sub_178C4(a1) == 0;
      v8 = 398645128;
      v13 = 1454805228;
    }
    goto LABEL_91;
  }
  return v29;
}
