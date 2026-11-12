_BYTE *__fastcall sub_50AC4(void *a1)
{
  int v2; // w8
  _BOOL4 v3; // w8
  _BOOL4 v4; // w8
  char *v5; // x23
  _BOOL4 v6; // w8
  int v7; // w10
  int v8; // w23
  char *v9; // x24
  _QWORD *v10; // x8
  unsigned int v11; // w8
  bool v12; // zf
  _BOOL4 v13; // w8
  int v14; // w10
  _BOOL4 v15; // w8
  int v16; // w10
  int v17; // w23
  __int64 v18; // x24
  int v19; // w8
  _BOOL4 v20; // w8
  int v21; // w10
  _BOOL4 v22; // w8
  int v23; // w8
  _BOOL4 v24; // w8
  int v25; // w10
  unsigned int v26; // w8
  _BOOL4 v27; // w8
  int v28; // w10
  _BOOL4 v29; // w8
  unsigned __int64 StatusReg; // [xsp+0h] [xbp-390h] BYREF
  int v32; // [xsp+Ch] [xbp-384h]
  void *v33; // [xsp+10h] [xbp-380h]
  _BYTE *v34; // [xsp+18h] [xbp-378h]
  _BYTE *v35; // [xsp+20h] [xbp-370h]
  int v36; // [xsp+34h] [xbp-35Ch]
  _QWORD *v37; // [xsp+38h] [xbp-358h]
  _BYTE *v38; // [xsp+40h] [xbp-350h]
  _QWORD *v39; // [xsp+48h] [xbp-348h]
  __int64 v40; // [xsp+50h] [xbp-340h]
  _QWORD *v41; // [xsp+58h] [xbp-338h]
  _QWORD *v42; // [xsp+60h] [xbp-330h]
  char *v43; // [xsp+68h] [xbp-328h]
  _QWORD *v44; // [xsp+70h] [xbp-320h]
  __int128 *v45; // [xsp+78h] [xbp-318h]
  __int128 *v46; // [xsp+80h] [xbp-310h]
  signed int v47; // [xsp+8Ch] [xbp-304h]
  unsigned __int64 *p_StatusReg; // [xsp+90h] [xbp-300h]
  char *v49; // [xsp+98h] [xbp-2F8h]
  char *v50; // [xsp+A0h] [xbp-2F0h]
  _QWORD *v51; // [xsp+A8h] [xbp-2E8h]
  bool v52; // [xsp+B3h] [xbp-2DDh]
  int v53; // [xsp+B4h] [xbp-2DCh]
  __int64 v54; // [xsp+B8h] [xbp-2D8h]
  __int64 v55; // [xsp+C0h] [xbp-2D0h]
  char *v56; // [xsp+C8h] [xbp-2C8h]
  __int64 *v57; // [xsp+D0h] [xbp-2C0h]
  __int64 v58; // [xsp+D8h] [xbp-2B8h]
  _BYTE *v59; // [xsp+E0h] [xbp-2B0h]
  bool v60; // [xsp+EBh] [xbp-2A5h]
  int v61; // [xsp+ECh] [xbp-2A4h]
  _BYTE *v62; // [xsp+F0h] [xbp-2A0h]
  __int64 v63; // [xsp+F8h] [xbp-298h] BYREF
  _QWORD v64[36]; // [xsp+100h] [xbp-290h] BYREF
  __int128 v65; // [xsp+220h] [xbp-170h] BYREF
  __int128 v66; // [xsp+230h] [xbp-160h]
  __int128 v67; // [xsp+240h] [xbp-150h] BYREF
  __int128 v68; // [xsp+250h] [xbp-140h]
  char v69; // [xsp+260h] [xbp-130h]
  _QWORD v70[2]; // [xsp+268h] [xbp-128h] BYREF
  char v71; // [xsp+278h] [xbp-118h]
  _QWORD v72[2]; // [xsp+27Ch] [xbp-114h] BYREF
  char v73; // [xsp+28Ch] [xbp-104h]
  _QWORD v74[14]; // [xsp+290h] [xbp-100h] BYREF
  _BYTE v75[32]; // [xsp+300h] [xbp-90h] BYREF
  _QWORD v76[4]; // [xsp+320h] [xbp-70h] BYREF

  StatusReg = _ReadStatusReg(TPIDR_EL0);
  v76[1] = *(_QWORD *)(StatusReg + 40);
  nullsub_2(a1);
  v36 = sub_5914(a1);
  v37 = v76;
  v76[0] = 0;
  sub_7904(v76, 8);
  v38 = v75;
  memset(v75, 0, sizeof(v75));
  v39 = v74;
  sub_E4574(v74, v74);
  sub_E46A4(v74, 0);
  v40 = v36;
  v33 = a1;
  sub_E7894((int)v74, a1);
  sub_E7CB0(v74, v75);
  v41 = v72;
  v72[0] = 0;
  v72[1] = 0;
  v73 = 0;
  v42 = v70;
  v70[0] = 0;
  v70[1] = 0;
  v71 = 0;
  v43 = (char *)v72;
  sub_554C(v72, v76, 8);
  v32 = 0;
LABEL_2:
  v2 = 1824094725;
  while ( 1 )
  {
    while ( 1 )
    {
      while ( 1 )
      {
        while ( 1 )
        {
          while ( v2 > 65330527 )
          {
            if ( v2 > 1225598884 )
            {
              if ( v2 <= 1683298462 )
              {
                if ( v2 == 1225598885 )
                {
                  v26 = ~(((_BYTE)x - 1) * (_BYTE)x) | 0xFFFFFFFE;
                  v12 = v26 == -1;
                  v27 = v26 != -1;
                  v28 = v12;
                  if ( (y < 10) ^ v28 | (y <= 9 && !v27) )
                    v2 = -1228478771;
                  else
                    v2 = 1293079812;
                }
                else
                {
                  if ( v2 != 1293079812 )
                  {
                    v32 = v53;
                    goto LABEL_2;
                  }
                  v2 = 1225598885;
                }
              }
              else if ( v2 > 1836790687 )
              {
                if ( v2 == 1836790688 )
                {
                  v73 = 0;
                  v44 = v70;
                  sub_554C(v70, v43, 17);
                  sub_E458C(v74);
                  v45 = &v67;
                  v69 = 0;
                  v67 = 0u;
                  v68 = 0u;
                  v46 = &v65;
                  v65 = xmmword_EA340;
                  v66 = xmmword_EA350;
                  sub_7AE4(&v67, &v65, 32);
                  v16 = v36 + 15;
                  if ( v36 >= 0 )
                    v16 = v36;
                  v17 = (v16 & 0xFFFFFFF0) - v36 + 16;
                  v47 = (v16 & 0xFFFFFFF0) + 16;
                  p_StatusReg = &StatusReg;
                  v18 = ((unsigned int)v47 + 15LL) & 0x1FFFFFFF0LL;
                  v49 = (char *)&StatusReg - v18;
                  sub_554C((char *)&StatusReg - v18, v33, v40);
                  memset(&v49[v40], v17, v17);
                  v50 = (char *)&StatusReg - v18;
                  v51 = v64;
                  sub_DFE70(v64, v64);
                  v52 = (unsigned int)sub_DFF28(v64, &v67, 256) != 0;
                  v19 = (x - 1) * x;
                  v12 = ((v19 ^ 0xFFFFFFFE) & v19) == 0;
                  v20 = ((v19 ^ 0xFFFFFFFE) & v19) != 0;
                  v21 = v12;
                  if ( (y < 10) ^ v21 | (y <= 9 && !v20) )
                    v2 = 693509716;
                  else
                    v2 = 1211408112;
                }
                else
                {
                  v35 = v34;
                  v2 = -1241530791;
                }
              }
              else if ( v2 == 1683298463 )
              {
                sub_DFE9C(v64);
LABEL_67:
                v35 = nullptr;
                v2 = -1241530791;
              }
              else
              {
                v61 = v32;
                if ( v32 >= 4 )
                  v2 = -1294410185;
                else
                  v2 = 794656481;
              }
            }
            else if ( v2 <= 693509715 )
            {
              if ( v2 == 65330528 )
                goto LABEL_67;
              if ( v2 == 372023876 )
                goto LABEL_3;
              if ( v60 )
                v2 = -273621366;
              else
                v2 = 372023876;
            }
            else if ( v2 > 948357746 )
            {
              if ( v2 == 948357747 )
              {
                sprintf(&v43[2 * v61 + 8], &byte_F7004, (unsigned __int8)v75[v61]);
                v53 = v61 + 1;
                v15 = ((((x - 1) * x) ^ 0xFFFFFFFE) & ((x - 1) * x)) != 0;
                if ( (y > 9) ^ v15 | (y <= 9 && !v15) )
                  v2 = 1463787963;
                else
                  v2 = -2001670774;
              }
              else
              {
                v73 = 0;
                sub_554C(v70, v43, 17);
                sub_E458C(v74);
                v69 = 0;
                v67 = 0u;
                v68 = 0u;
                v65 = xmmword_EA340;
                v66 = xmmword_EA350;
                sub_7AE4(&v67, &v65, 32);
                v7 = v36 + 15;
                if ( v36 >= 0 )
                  v7 = v36;
                v8 = (v7 & 0xFFFFFFF0) + 16 - v36;
                v9 = (char *)&StatusReg - (((v7 & 0xFFFFFFF0) + 16 + 15LL) & 0x1FFFFFFF0LL);
                sub_554C(v9, v33, v40);
                memset(&v9[v40], v8, v8);
                sub_DFE70(v10, v64);
                sub_DFF28(v64, &v67, 256);
                v2 = 1836790688;
              }
            }
            else if ( v2 == 693509716 )
            {
              if ( v52 )
                v2 = 1683298463;
              else
                v2 = -1515393802;
            }
            else
            {
              v3 = (~(((_BYTE)x - 1) * (_BYTE)x) | 0xFFFFFFFE) != -1;
              if ( (y > 9) ^ v3 | (y <= 9 && !v3) )
                v2 = 948357747;
              else
                v2 = -2001670774;
            }
          }
          if ( v2 <= -1058620478 )
            break;
          if ( v2 <= -450269877 )
          {
            if ( v2 == -1058620477 )
            {
              v55 = v47 + 25;
              v56 = (char *)&StatusReg - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0LL);
              sub_554C(v56, &byte_F700C, 3);
              v56[3] = 0;
              v56[4] = 5;
              sub_554C(v56 + 5, v44, 16);
              v56[21] = HIBYTE(v47);
              v56[22] = BYTE2(v47);
              v56[23] = BYTE1(v47);
              v56[24] = v47;
              sub_554C(v56 + 25, v50, v54);
              v57 = &v63;
              v58 = 2 * v55;
              v59 = malloc(2 * v55);
              v60 = v59 != nullptr;
              v29 = (~(((_BYTE)x - 1) * (_BYTE)x) | 0xFFFFFFFE) == -1;
              if ( (y < 10 && v29) | (y < 10) ^ v29 )
                v2 = 587135500;
              else
                v2 = -1693885901;
            }
            else if ( v2 == -669998496 )
            {
              v59[v63] = 0;
              v34 = v59;
              v2 = 1891127394;
            }
            else
            {
              v6 = (~(((_BYTE)x - 1) * (_BYTE)x) | 0xFFFFFFFE) != -1;
              if ( (y > 9) ^ v6 | (y <= 9 && !v6) )
                v2 = -450269876;
              else
                v2 = -1816806380;
            }
          }
          else if ( v2 > -262632843 )
          {
            if ( v2 == -262632842 )
            {
              v23 = (x - 1) * x;
              v12 = ((v23 ^ 0xFFFFFFFE) & v23) == 0;
              v24 = ((v23 ^ 0xFFFFFFFE) & v23) != 0;
              v25 = v12;
              if ( (y < 10) ^ v25 | (y <= 9 && !v24) )
                v2 = -1058620477;
              else
                v2 = -1693885901;
            }
            else
            {
LABEL_3:
              v34 = nullptr;
              v2 = 1891127394;
            }
          }
          else if ( v2 == -450269876 )
          {
            sub_DFE9C(v64);
            v22 = ((((x - 1) * x) ^ 0xFFFFFFFE) & ((x - 1) * x)) != 0;
            if ( (y > 9) ^ v22 | (y <= 9 && !v22) )
              v2 = 65330528;
            else
              v2 = -1816806380;
          }
          else if ( (unsigned int)sub_DED20(v59, v58, &v63, v56, v55) )
          {
            v2 = -60692809;
          }
          else
          {
            v2 = -669998496;
          }
        }
        if ( v2 > -1515393803 )
          break;
        if ( v2 == -2001670774 )
        {
          sprintf(&v43[2 * v61 + 8], &byte_F7004, (unsigned __int8)v75[v61]);
          v2 = 948357747;
        }
        else if ( v2 == -1816806380 )
        {
          sub_DFE9C(v64);
          v2 = -450269876;
        }
        else
        {
          v5 = (char *)&StatusReg - ((v47 + 25 + 15LL) & 0xFFFFFFFFFFFFFFF0LL);
          sub_554C(v5, &byte_F700C, 3);
          *(_WORD *)(v5 + 3) = 1280;
          sub_554C(v5 + 5, v44, 16);
          v5[21] = HIBYTE(v47);
          v5[22] = BYTE2(v47);
          v5[23] = BYTE1(v47);
          v5[24] = v47;
          sub_554C(v5 + 25, v50, v54);
          v2 = -1058620477;
        }
      }
      if ( v2 > -1241530792 )
        break;
      if ( v2 == -1515393802 )
      {
        v54 = v47;
        if ( (unsigned int)sub_E3418(v64, 1, v47, v43, v49, v50) )
          v2 = -659658707;
        else
          v2 = -262632842;
      }
      else
      {
        v4 = ((((x - 1) * x) ^ 0xFFFFFFFE) & ((x - 1) * x)) != 0;
        if ( (y > 9) ^ v4 | (y <= 9 && !v4) )
          v2 = 1836790688;
        else
          v2 = 1211408112;
      }
    }
    if ( v2 != -1241530791 )
      return v62;
    v62 = v35;
    v11 = ~(((_BYTE)x - 1) * (_BYTE)x) | 0xFFFFFFFE;
    v12 = v11 == -1;
    v13 = v11 != -1;
    v14 = v12;
    if ( (y < 10) ^ v14 | (y <= 9 && !v13) )
      v2 = 1225598885;
    else
      v2 = 1293079812;
  }
}
